=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class AllianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all alliances
    # List all active player alliances  --- Alternate route: `/dev/alliances/`  Alternate route: `/legacy/alliances/`  Alternate route: `/v1/alliances/`  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<Integer>]
    def get_alliances(opts = {})
      data, _status_code, _headers = get_alliances_with_http_info(opts)
      data
    end

    # List all alliances
    # List all active player alliances  --- Alternate route: &#x60;/dev/alliances/&#x60;  Alternate route: &#x60;/legacy/alliances/&#x60;  Alternate route: &#x60;/v1/alliances/&#x60;  --- This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_alliances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AllianceApi.get_alliances ...'
      end
      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/alliances/'

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get alliance information
    # Public information about an alliance  --- Alternate route: `/dev/alliances/{alliance_id}/`  Alternate route: `/v3/alliances/{alliance_id}/`  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetAlliancesAllianceIdOk]
    def get_alliances_alliance_id(alliance_id, opts = {})
      data, _status_code, _headers = get_alliances_alliance_id_with_http_info(alliance_id, opts)
      data
    end

    # Get alliance information
    # Public information about an alliance  --- Alternate route: &#x60;/dev/alliances/{alliance_id}/&#x60;  Alternate route: &#x60;/v3/alliances/{alliance_id}/&#x60;  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetAlliancesAllianceIdOk, Fixnum, Hash)>] GetAlliancesAllianceIdOk data, response status code and response headers
    def get_alliances_alliance_id_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AllianceApi.get_alliances_alliance_id ...'
      end
      # verify the required parameter 'alliance_id' is set
      if @api_client.config.client_side_validation && alliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_alliances_alliance_id"
      end
      if @api_client.config.client_side_validation && alliance_id < 1
        fail ArgumentError, 'invalid value for "alliance_id" when calling AllianceApi.get_alliances_alliance_id, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/alliances/{alliance_id}/'.sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAlliancesAllianceIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances_alliance_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List alliance's corporations
    # List all current member corporations of an alliance  --- Alternate route: `/dev/alliances/{alliance_id}/corporations/`  Alternate route: `/legacy/alliances/{alliance_id}/corporations/`  Alternate route: `/v1/alliances/{alliance_id}/corporations/`  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<Integer>]
    def get_alliances_alliance_id_corporations(alliance_id, opts = {})
      data, _status_code, _headers = get_alliances_alliance_id_corporations_with_http_info(alliance_id, opts)
      data
    end

    # List alliance&#39;s corporations
    # List all current member corporations of an alliance  --- Alternate route: &#x60;/dev/alliances/{alliance_id}/corporations/&#x60;  Alternate route: &#x60;/legacy/alliances/{alliance_id}/corporations/&#x60;  Alternate route: &#x60;/v1/alliances/{alliance_id}/corporations/&#x60;  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_alliances_alliance_id_corporations_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AllianceApi.get_alliances_alliance_id_corporations ...'
      end
      # verify the required parameter 'alliance_id' is set
      if @api_client.config.client_side_validation && alliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_alliances_alliance_id_corporations"
      end
      if @api_client.config.client_side_validation && alliance_id < 1
        fail ArgumentError, 'invalid value for "alliance_id" when calling AllianceApi.get_alliances_alliance_id_corporations, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/alliances/{alliance_id}/corporations/'.sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances_alliance_id_corporations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get alliance icon
    # Get the icon urls for a alliance  --- Alternate route: `/dev/alliances/{alliance_id}/icons/`  Alternate route: `/legacy/alliances/{alliance_id}/icons/`  Alternate route: `/v1/alliances/{alliance_id}/icons/`  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [GetAlliancesAllianceIdIconsOk]
    def get_alliances_alliance_id_icons(alliance_id, opts = {})
      data, _status_code, _headers = get_alliances_alliance_id_icons_with_http_info(alliance_id, opts)
      data
    end

    # Get alliance icon
    # Get the icon urls for a alliance  --- Alternate route: &#x60;/dev/alliances/{alliance_id}/icons/&#x60;  Alternate route: &#x60;/legacy/alliances/{alliance_id}/icons/&#x60;  Alternate route: &#x60;/v1/alliances/{alliance_id}/icons/&#x60;  --- This route is cached for up to 3600 seconds
    # @param alliance_id An EVE alliance ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(GetAlliancesAllianceIdIconsOk, Fixnum, Hash)>] GetAlliancesAllianceIdIconsOk data, response status code and response headers
    def get_alliances_alliance_id_icons_with_http_info(alliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AllianceApi.get_alliances_alliance_id_icons ...'
      end
      # verify the required parameter 'alliance_id' is set
      if @api_client.config.client_side_validation && alliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'alliance_id' when calling AllianceApi.get_alliances_alliance_id_icons"
      end
      if @api_client.config.client_side_validation && alliance_id < 1
        fail ArgumentError, 'invalid value for "alliance_id" when calling AllianceApi.get_alliances_alliance_id_icons, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/alliances/{alliance_id}/icons/'.sub('{' + 'alliance_id' + '}', alliance_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetAlliancesAllianceIdIconsOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances_alliance_id_icons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get alliance names
    # Resolve a set of alliance IDs to alliance names  --- Alternate route: `/dev/alliances/names/`  Alternate route: `/v2/alliances/names/`  --- This route is cached for up to 3600 seconds
    # @param alliance_ids A comma separated list of alliance IDs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<GetAlliancesNames200Ok>]
    def get_alliances_names(alliance_ids, opts = {})
      data, _status_code, _headers = get_alliances_names_with_http_info(alliance_ids, opts)
      data
    end

    # Get alliance names
    # Resolve a set of alliance IDs to alliance names  --- Alternate route: &#x60;/dev/alliances/names/&#x60;  Alternate route: &#x60;/v2/alliances/names/&#x60;  --- This route is cached for up to 3600 seconds
    # @param alliance_ids A comma separated list of alliance IDs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :if_none_match ETag from a previous request. A 304 will be returned if this matches the current ETag
    # @return [Array<(Array<GetAlliancesNames200Ok>, Fixnum, Hash)>] Array<GetAlliancesNames200Ok> data, response status code and response headers
    def get_alliances_names_with_http_info(alliance_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AllianceApi.get_alliances_names ...'
      end
      # verify the required parameter 'alliance_ids' is set
      if @api_client.config.client_side_validation && alliance_ids.nil?
        fail ArgumentError, "Missing the required parameter 'alliance_ids' when calling AllianceApi.get_alliances_names"
      end
      if @api_client.config.client_side_validation && alliance_ids.length > 100
        fail ArgumentError, 'invalid value for "alliance_ids" when calling AllianceApi.get_alliances_names, number of items must be less than or equal to 100.'
      end

      if @api_client.config.client_side_validation && alliance_ids.length < 1
        fail ArgumentError, 'invalid value for "alliance_ids" when calling AllianceApi.get_alliances_names, number of items must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = '/alliances/names/'

      # query parameters
      query_params = {}
      query_params[:'alliance_ids'] = @api_client.build_collection_param(alliance_ids, :csv)
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'If-None-Match'] = opts[:'if_none_match'] if !opts[:'if_none_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<GetAlliancesNames200Ok>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AllianceApi#get_alliances_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
