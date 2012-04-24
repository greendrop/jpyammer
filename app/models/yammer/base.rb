module Yammer
  class Base
    def initialize(options = {})
      client_options = {
        :site => options.delete(:yammer_url) || 'https://www.yammer.com'
      }

      @api_path   = '/api/v1/'

      options[:consumer] = {} unless options[:consumer]
      options[:access] = {} unless options[:access]
      
      consumer = OAuth::Consumer.new(options[:consumer][:key], options[:consumer][:secret], client_options)
      client.http.set_debug_output($stderr) if options[:verbose] == true
      @access_token = OAuth::AccessToken.new(consumer, options[:access][:token], options[:access][:secret])
    end

    private
      def yammer_request(http_method, options)
        request_uri = @api_path + options.delete(:resource).to_s
        [:action, :id].each {|k| request_uri += "/#{options.delete(k)}" if options.has_key?(k) }
        request_uri += ".json"

        request_uri += "?access_token=#{options.delete(:access_token)}" if options[:access_token]

        if options.any?
          request_uri += request_uri.include?('?') ? '&' : '?'
          request_uri += "#{create_query_string(options)}" unless http_method == :post
        end

        if http_method == :post
          handle_response(@access_token.send(http_method, request_uri, options))
        else
          handle_response(@access_token.send(http_method, request_uri))
        end
      end

      def create_query_string(options)
        options.map {|k, v| "#{OAuth::Helper.escape(k)}=#{OAuth::Helper.escape(v)}"}.join('&')
      end

      def handle_response(response)
        case response.code.to_i
        when 200..201
          response
        else
          raise "Error. HTTP Response #{response.code}"
        end
      end
  end
end

