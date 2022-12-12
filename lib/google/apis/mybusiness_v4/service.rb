# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module MybusinessV4
      # Google My Business API
      #
      # The Google My Business API provides an interface for managing business
      #  location information on Google.
      #
      # @example
      #    require 'google/apis/mybusiness_v4'
      #
      #    Mybusiness = Google::Apis::MybusinessV4 # Alias the module
      #    service = Mybusiness::MyBusinessService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusiness.googleapis.com/', '',
                client_name: 'google-apis-mybusiness_v4',
                client_version: Google::Apis::MybusinessV4::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates an account with the specified name and type under the given parent. -
        # Personal accounts and Organizations cannot be created. - User Groups cannot be
        # created with a Personal account as primary owner. - Location Groups cannot be
        # created with a primary owner of a Personal account if the Personal account is
        # in an Organization. - Location Groups cannot own Location Groups.
        # @param [Google::Apis::MybusinessV4::Account] account_object
        # @param [String] primary_owner
        #   The resource name of the account which will be the primary owner of the
        #   account being created. It should be of the form `accounts/`account_id`/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account(account_object = nil, primary_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/accounts', options)
          command.request_representation = Google::Apis::MybusinessV4::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MybusinessV4::Account::Representation
          command.response_class = Google::Apis::MybusinessV4::Account
          command.query['primaryOwner'] = primary_owner unless primary_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears the pubsub notification settings for the account.
        # @param [String] name
        #   The resource name for the notification settings to be cleared.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_notifications(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an account number for this account. The account number is not
        # provisioned when an account is created. Use this request to create an account
        # number when it is required.
        # @param [String] name
        #   The name of the account to generate an account number for.
        # @param [Google::Apis::MybusinessV4::GenerateAccountNumberRequest] generate_account_number_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_number(name, generate_account_number_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:generateAccountNumber', options)
          command.request_representation = Google::Apis::MybusinessV4::GenerateAccountNumberRequest::Representation
          command.request_object = generate_account_number_request_object
          command.response_representation = Google::Apis::MybusinessV4::Account::Representation
          command.response_class = Google::Apis::MybusinessV4::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified account. Returns `NOT_FOUND` if the account does not exist
        # or if the caller does not have access rights to it.
        # @param [String] name
        #   The name of the account to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Account::Representation
          command.response_class = Google::Apis::MybusinessV4::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the pubsub notification settings for the account.
        # @param [String] name
        #   The notification settings resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Notifications] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Notifications]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_notifications(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Notifications::Representation
          command.response_class = Google::Apis::MybusinessV4::Notifications
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the accounts for the authenticated user. This includes all
        # accounts that the user owns, as well as any accounts for which the user has
        # management rights.
        # @param [String] filter
        #   A filter constraining the accounts to return. The response includes only
        #   entries that match the filter. If `filter` is empty, then no constraints are
        #   applied and all accounts (paginated) are retrieved for the requested account.
        #   For example, a request with the filter `type=USER_GROUP` will only return user
        #   groups.
        # @param [String] name
        #   The resource name of the account for which the list of directly accessible
        #   accounts is to be retrieved. This only makes sense for Organizations and User
        #   Groups. If empty, will return `ListAccounts` for the authenticated user.
        # @param [Fixnum] page_size
        #   How many accounts to fetch per page. Default is 20, minimum is 2, and maximum
        #   page size is 20.
        # @param [String] page_token
        #   If specified, the next page of accounts is retrieved. The `pageToken` is
        #   returned when a call to `accounts.list` returns more results than can fit into
        #   the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(filter: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/accounts', options)
          command.response_representation = Google::Apis::MybusinessV4::ListAccountsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListAccountsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the GoogleLocations that have been recommended to the specified
        # Business Profile account. Recommendations are provided for personal accounts
        # and location groups only, requests for all other account types will result in
        # an error. The recommendations for location groups are based on the locations
        # in that group. The recommendations for personal accounts are based on all of
        # the locations that the user has access to on Business Profile (which includes
        # locations they can access through location groups), and is a superset of all
        # recommendations generated for the user.
        # @param [String] name
        #   Name of the account resource to fetch recommended Google locations for.
        # @param [Fixnum] page_size
        #   How many locations to fetch per page. Default is 25, minimum is 1, and maximum
        #   page size is 100.
        # @param [String] page_token
        #   If specified, the next page of locations is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListRecommendedGoogleLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListRecommendedGoogleLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_recommend_google_locations(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}:recommendGoogleLocations', options)
          command.response_representation = Google::Apis::MybusinessV4::ListRecommendedGoogleLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListRecommendedGoogleLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified business account. Personal accounts cannot be updated
        # using this method. *Note:* The only editable field for an account is `
        # account_name`. Any other fields passed in (such as `type` or `role`) are
        # ignored.
        # @param [String] name
        #   The name of the account to update.
        # @param [Google::Apis::MybusinessV4::Account] account_object
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually updating the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(name, account_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::MybusinessV4::Account::Representation
          command.response_class = Google::Apis::MybusinessV4::Account
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the pubsub notification settings for the account informing Business
        # Profile which topic to send pubsub notifications for: - New reviews for
        # locations administered by the account. - Updated reviews for locations
        # administered by the account. - New `GoogleUpdates` for locations administered
        # by the account. An account will only have one notification settings resource,
        # and only one pubsub topic can be set.
        # @param [String] name
        #   The notification settings resource name.
        # @param [Google::Apis::MybusinessV4::Notifications] notifications_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Notifications] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Notifications]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_notifications(name, notifications_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Notifications::Representation
          command.request_object = notifications_object
          command.response_representation = Google::Apis::MybusinessV4::Notifications::Representation
          command.response_class = Google::Apis::MybusinessV4::Notifications
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator for the specified
        # account. The invitee must accept the invitation in order to be granted access
        # to the account. See AcceptInvitation to programmatically accept an invitation.
        # @param [String] parent
        #   The resource name of the account this admin is created for.
        # @param [Google::Apis::MybusinessV4::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_admin(parent, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/admins', options)
          command.request_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.response_class = Google::Apis::MybusinessV4::Admin
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin from the specified account.
        # @param [String] name
        #   The resource name of the admin to remove from the account.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the admins for the specified account.
        # @param [String] parent
        #   The name of the account from which to retrieve a list of admins.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListAccountAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListAccountAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_admins(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/admins', options)
          command.response_representation = Google::Apis::MybusinessV4::ListAccountAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListAccountAdminsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Admin for the specified Account Admin. Only the AdminRole of the
        # Admin can be updated.
        # @param [String] name
        #   The resource name of the admin to update.
        # @param [Google::Apis::MybusinessV4::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_admin(name, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.response_class = Google::Apis::MybusinessV4::Admin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts the specified invitation.
        # @param [String] name
        #   The name of the invitation that is being accepted.
        # @param [Google::Apis::MybusinessV4::AcceptInvitationRequest] accept_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_invitation(name, accept_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:accept', options)
          command.request_representation = Google::Apis::MybusinessV4::AcceptInvitationRequest::Representation
          command.request_object = accept_invitation_request_object
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Declines the specified invitation.
        # @param [String] name
        #   The name of the account invitation that is being declined.
        # @param [Google::Apis::MybusinessV4::DeclineInvitationRequest] decline_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def decline_invitation(name, decline_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:decline', options)
          command.request_representation = Google::Apis::MybusinessV4::DeclineInvitationRequest::Representation
          command.request_object = decline_invitation_request_object
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pending invitations for the specified account.
        # @param [String] parent
        #   The name of the account from which the list of invitations is being retrieved.
        # @param [String] target_type
        #   Specifies which target types should appear in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_invitations(parent, target_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/invitations', options)
          command.response_representation = Google::Apis::MybusinessV4::ListInvitationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListInvitationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['targetType'] = target_type unless target_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associates a location to a place ID. Any previous association is overwritten.
        # This operation is only valid if the location is unverified. The association
        # must be valid, that is, it appears in the list of `FindMatchingLocations`.
        # @param [String] name
        #   The resource name of the location to associate.
        # @param [Google::Apis::MybusinessV4::AssociateLocationRequest] associate_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def associate_location(name, associate_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:associate', options)
          command.request_representation = Google::Apis::MybusinessV4::AssociateLocationRequest::Representation
          command.request_object = associate_location_request_object
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets all of the specified locations in the given account.
        # @param [String] name
        #   The name of the account from which to fetch locations.
        # @param [Google::Apis::MybusinessV4::BatchGetLocationsRequest] batch_get_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::BatchGetLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::BatchGetLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_get_locations(name, batch_get_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}/locations:batchGet', options)
          command.request_representation = Google::Apis::MybusinessV4::BatchGetLocationsRequest::Representation
          command.request_object = batch_get_locations_request_object
          command.response_representation = Google::Apis::MybusinessV4::BatchGetLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::BatchGetLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of reviews for all specified locations. This
        # operation is only valid if the specified locations are verified. *Note:*
        # Reviews are limited to a batch size of 200 `location_names` per call.
        # @param [String] name
        #   The name of the account from which to retrieve a list of reviews across
        #   multiple locations.
        # @param [Google::Apis::MybusinessV4::BatchGetReviewsRequest] batch_get_reviews_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::BatchGetReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::BatchGetReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_location_get_reviews(name, batch_get_reviews_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}/locations:batchGetReviews', options)
          command.request_representation = Google::Apis::MybusinessV4::BatchGetReviewsRequest::Representation
          command.request_object = batch_get_reviews_request_object
          command.response_representation = Google::Apis::MybusinessV4::BatchGetReviewsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::BatchGetReviewsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears an association between a location and its place ID. This operation is
        # only valid if the location is unverified.
        # @param [String] name
        #   The resource name of the location to disassociate.
        # @param [Google::Apis::MybusinessV4::ClearLocationAssociationRequest] clear_location_association_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_account_location_association(name, clear_location_association_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:clearAssociation', options)
          command.request_representation = Google::Apis::MybusinessV4::ClearLocationAssociationRequest::Representation
          command.request_object = clear_location_association_request_object
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new location owned by the specified account, and returns it.
        # @param [String] parent
        #   The name of the account in which to create this location.
        # @param [Google::Apis::MybusinessV4::Location] location_object
        # @param [String] request_id
        #   A unique request ID for the server to detect duplicated requests. We recommend
        #   using UUIDs. Max length is 50 characters.
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually creating the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location(parent, location_object = nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/locations', options)
          command.request_representation = Google::Apis::MybusinessV4::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessV4::Location::Representation
          command.response_class = Google::Apis::MybusinessV4::Location
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a location. *Note:* If this location cannot be deleted using the API
        # as marked in the LocationState, use the [Business Profile](https://business.
        # google.com/manage/) website. Returns `NOT_FOUND` if the location does not
        # exist.
        # @param [String] name
        #   The name of the location to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports all eligible verification options for a location in a specific
        # language.
        # @param [String] name
        #   Resource name of the location to verify.
        # @param [Google::Apis::MybusinessV4::FetchVerificationOptionsRequest] fetch_verification_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::FetchVerificationOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::FetchVerificationOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_location_verification_options(name, fetch_verification_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:fetchVerificationOptions', options)
          command.request_representation = Google::Apis::MybusinessV4::FetchVerificationOptionsRequest::Representation
          command.request_object = fetch_verification_options_request_object
          command.response_representation = Google::Apis::MybusinessV4::FetchVerificationOptionsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::FetchVerificationOptionsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds all of the possible locations that are a match to the specified location.
        # This operation is only valid if the location is unverified.
        # @param [String] name
        #   The resource name of the location to find matches for.
        # @param [Google::Apis::MybusinessV4::FindMatchingLocationsRequest] find_matching_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::FindMatchingLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::FindMatchingLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_account_location_matches(name, find_matching_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:findMatches', options)
          command.request_representation = Google::Apis::MybusinessV4::FindMatchingLocationsRequest::Representation
          command.request_object = find_matching_locations_request_object
          command.response_representation = Google::Apis::MybusinessV4::FindMatchingLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::FindMatchingLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified location. Returns `NOT_FOUND` if the location does not
        # exist.
        # @param [String] name
        #   The name of the location to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Location::Representation
          command.response_class = Google::Apis::MybusinessV4::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the food menus of a specific location. Only call this if location.
        # location_state.can_have_food_menu is true.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/foodMenus`
        # @param [String] read_mask
        #   Optional. The specific fields to return. If no mask is specified, then it
        #   returns the full FoodMenu (same as "*"). Repeated field items can not be
        #   individually specified. For example: "name" and "menus" are valid masks, while
        #   "menus.sections" is invalid.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::FoodMenus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::FoodMenus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_food_menus(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::FoodMenus::Representation
          command.response_class = Google::Apis::MybusinessV4::FoodMenus
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Google-updated version of the specified location. Returns `NOT_FOUND`
        # if the location does not exist.
        # @param [String] name
        #   The name of the location to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::GoogleUpdatedLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::GoogleUpdatedLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_google_updated(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}:googleUpdated', options)
          command.response_representation = Google::Apis::MybusinessV4::GoogleUpdatedLocation::Representation
          command.response_class = Google::Apis::MybusinessV4::GoogleUpdatedLocation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Health provider attributes of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: accounts/`
        #   account_id`/locations/`location_id`/healthProviderAttributes
        # @param [String] language_code
        #   Optional. The BCP 47 code for the language. If a language code is not provided,
        #   it defaults to English. Right now only 'en' is supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::HealthProviderAttributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::HealthProviderAttributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_health_provider_attributes(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::HealthProviderAttributes::Representation
          command.response_class = Google::Apis::MybusinessV4::HealthProviderAttributes
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/lodging`
        # @param [String] read_mask
        #   Optional. The specific fields to return. If no mask is specified, then it
        #   returns the full Lodging (same as "*"). Repeated field items cannot be
        #   individually specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Lodging] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Lodging]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_lodging(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Lodging::Representation
          command.response_class = Google::Apis::MybusinessV4::Lodging
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the specified service list of a location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/servicelist`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ServiceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ServiceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_service_list(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::ServiceList::Representation
          command.response_class = Google::Apis::MybusinessV4::ServiceList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the locations for the specified account.
        # @param [String] parent
        #   The name of the account to fetch locations from. If the Account is of
        #   AccountType PERSONAL, only Locations that are directly owned by the Account
        #   are returned, otherwise it will return all accessible locations from the
        #   Account, either directly or indirectly.
        # @param [String] filter
        #   A filter constraining the locations to return. The response includes only
        #   entries that match the filter. If `filter` is empty, then constraints are
        #   applied and all locations (paginated) are retrieved for the requested account.
        #   For more information about valid fields and example usage, see [Work with
        #   Location Data Guide](https://developers.google.com/my-business/content/
        #   location-data#filter_results_when_you_list_locations).
        # @param [String] language_code
        #   The BCP 47 code of language to get display location properties in. If this
        #   language is not available, they will be provided in the language of the
        #   location. If neither is available, they will be provided in English.
        #   Deprecated. After August 15th, 2020, this field will no longer be applied.
        #   Instead, the language of the location will always be used.
        # @param [String] order_by
        #   Sorting order for the request. Multiple fields should be comma-separated,
        #   following SQL syntax. The default sorting order is ascending. To specify
        #   descending order, a suffix " desc" should be added. Valid fields to order_by
        #   are location_name and store_code. For example: "location_name, store_code desc"
        #   or "location_name" or "store_code desc"
        # @param [Fixnum] page_size
        #   How many locations to fetch per page. Default is 100, minimum is 1, and
        #   maximum page size is 100.
        # @param [String] page_token
        #   If specified, it fetches the next `page` of locations. The page token is
        #   returned by previous calls to `ListLocations` when there were more locations
        #   than could fit in the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_locations(parent, filter: nil, language_code: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/locations', options)
          command.response_representation = Google::Apis::MybusinessV4::ListLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListLocationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified location. Photos are only allowed on a location that has
        # a Google+ page. Returns `NOT_FOUND` if the location does not exist.
        # @param [String] name
        #   The name of the location to update.
        # @param [Google::Apis::MybusinessV4::Location] location_object
        # @param [String] attribute_mask
        #   The IDs of the attributes to update. Only attributes noted in the mask will be
        #   updated. If an attribute is present in the mask and not in the location, it
        #   will be removed. An empty mask will update all attributes. Whenever this field
        #   is set, the update_mask should include attributes as one of the fields to
        #   update.
        # @param [String] update_mask
        #   The specific fields to update. If no mask is specified, then this is treated
        #   as a full update and all fields are set to the values passed in, which may
        #   include unsetting empty fields in the request.
        # @param [Boolean] validate_only
        #   If true, the request is validated without actually updating the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location(name, location_object = nil, attribute_mask: nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessV4::Location::Representation
          command.response_class = Google::Apis::MybusinessV4::Location
          command.params['name'] = name unless name.nil?
          command.query['attributeMask'] = attribute_mask unless attribute_mask.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a report containing insights on one or more metrics by location. *Note:
        # * Insight reports are limited to a batch size of 10 `location_names` per call.
        # @param [String] name
        #   The account resource name.
        # @param [Google::Apis::MybusinessV4::ReportLocationInsightsRequest] report_location_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ReportLocationInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ReportLocationInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_account_location_insights(name, report_location_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}/locations:reportInsights', options)
          command.request_representation = Google::Apis::MybusinessV4::ReportLocationInsightsRequest::Representation
          command.request_object = report_location_insights_request_object
          command.response_representation = Google::Apis::MybusinessV4::ReportLocationInsightsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ReportLocationInsightsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a location from an account that the user owns to another account that
        # the same user administers. The user must be an owner of the account the
        # location is currently associated with and must also be at least a manager of
        # the destination account. Returns the Location with its new resource name.
        # @param [String] name
        #   The name of the location to transfer.
        # @param [Google::Apis::MybusinessV4::TransferLocationRequest] transfer_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transfer_location(name, transfer_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:transfer', options)
          command.request_representation = Google::Apis::MybusinessV4::TransferLocationRequest::Representation
          command.request_object = transfer_location_request_object
          command.response_representation = Google::Apis::MybusinessV4::Location::Representation
          command.response_class = Google::Apis::MybusinessV4::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the food menus of a specific location. Only call this if location.
        # location_state.can_have_food_menu is true.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/foodMenus`
        # @param [Google::Apis::MybusinessV4::FoodMenus] food_menus_object
        # @param [String] update_mask
        #   Optional. The specific fields to update. If no mask is specified, then this is
        #   treated as a full update and all fields are set to the values passed in, which
        #   may include unsetting empty fields in the request. Repeated field items can
        #   not be individually updated. Note: "name" of FoodMenus is the resource
        #   identifier which is not updatable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::FoodMenus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::FoodMenus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_location_food_menus(name, food_menus_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::FoodMenus::Representation
          command.request_object = food_menus_object
          command.response_representation = Google::Apis::MybusinessV4::FoodMenus::Representation
          command.response_class = Google::Apis::MybusinessV4::FoodMenus
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Health provider attributes of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/healthProviderAttributes`
        # @param [Google::Apis::MybusinessV4::HealthProviderAttributes] health_provider_attributes_object
        # @param [String] update_mask
        #   Optional. The specific fields to update. If no mask is specified, then this is
        #   treated as a full update and all fields are set to the values passed in, which
        #   may include unsetting empty fields in the request. In V1, there is only the
        #   insurance_networks field to update. More attributes will be supported later.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::HealthProviderAttributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::HealthProviderAttributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_location_health_provider_attributes(name, health_provider_attributes_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::HealthProviderAttributes::Representation
          command.request_object = health_provider_attributes_object
          command.response_representation = Google::Apis::MybusinessV4::HealthProviderAttributes::Representation
          command.response_class = Google::Apis::MybusinessV4::HealthProviderAttributes
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/lodging`
        # @param [Google::Apis::MybusinessV4::Lodging] lodging_object
        # @param [String] update_mask
        #   Optional. The specific fields to update. If no mask is specified, then this is
        #   treated as a full update (same as "*") and all fields are set to the values
        #   passed in, which may include unsetting empty fields in the request. Repeated
        #   field items cannot be individually updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Lodging] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Lodging]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_location_lodging(name, lodging_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Lodging::Representation
          command.request_object = lodging_object
          command.response_representation = Google::Apis::MybusinessV4::Lodging::Representation
          command.response_class = Google::Apis::MybusinessV4::Lodging
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified service list of a location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/serviceList`
        # @param [Google::Apis::MybusinessV4::ServiceList] service_list_object
        # @param [String] update_mask
        #   Optional. The specific fields to update. If no mask is specified, then this is
        #   treated as a full update and all fields are set to the values passed in, which
        #   may include unsetting empty fields in the request. Repeated field items can
        #   not be individually updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ServiceList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ServiceList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_location_service_list(name, service_list_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::ServiceList::Representation
          command.request_object = service_list_object
          command.response_representation = Google::Apis::MybusinessV4::ServiceList::Representation
          command.response_class = Google::Apis::MybusinessV4::ServiceList
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts the verification process for a location.
        # @param [String] name
        #   Resource name of the location to verify.
        # @param [Google::Apis::MybusinessV4::VerifyLocationRequest] verify_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::VerifyLocationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::VerifyLocationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_location(name, verify_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:verify', options)
          command.request_representation = Google::Apis::MybusinessV4::VerifyLocationRequest::Representation
          command.request_object = verify_location_request_object
          command.response_representation = Google::Apis::MybusinessV4::VerifyLocationResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::VerifyLocationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Invites the specified user to become an administrator for the specified
        # location. The invitee must accept the invitation in order to be granted access
        # to the location. See AcceptInvitation to programmatically accept an invitation.
        # @param [String] parent
        #   The resource name of the location this admin is created for.
        # @param [Google::Apis::MybusinessV4::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location_admin(parent, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/admins', options)
          command.request_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.response_class = Google::Apis::MybusinessV4::Admin
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified admin as a manager of the specified location.
        # @param [String] name
        #   The resource name of the admin to remove from the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_admin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the admins for the specified location.
        # @param [String] parent
        #   The name of the location to list admins of.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListLocationAdminsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListLocationAdminsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_admins(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/admins', options)
          command.response_representation = Google::Apis::MybusinessV4::ListLocationAdminsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListLocationAdminsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Admin for the specified Location Admin. Only the AdminRole of the
        # Admin can be updated.
        # @param [String] name
        #   The resource name of the admin to update.
        # @param [Google::Apis::MybusinessV4::Admin] admin_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Admin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Admin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location_admin(name, admin_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.request_object = admin_object
          command.response_representation = Google::Apis::MybusinessV4::Admin::Representation
          command.response_class = Google::Apis::MybusinessV4::Admin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the followers settings for a location. NOT_FOUND is returned if either the
        # account or the location doesn't exist. PRECONDITION_FAILED is returned if the
        # location is not verified nor connected to Maps.
        # @param [String] name
        #   The resource name of the location's followers metadata. accounts/`account_id`/
        #   locations/`location_id`/followers/metadata
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::FollowersMetadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::FollowersMetadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_follower_metadata(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::FollowersMetadata::Representation
          command.response_class = Google::Apis::MybusinessV4::FollowersMetadata
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all insurance networks supported by Google.
        # @param [String] parent
        #   Required. The name of the location whose insurance networks will be listed.
        #   The name is in the form: accounts/`account_id`/locations/`location_id`
        # @param [String] language_code
        #   Optional. The BCP 47 code for the language. If a language code is not provided,
        #   it defaults to English. Right now only 'en' is supported.
        # @param [Fixnum] page_size
        #   How many insurance networks to return per page. The default value is 5000.
        #   Maximum page size is 10000.
        # @param [String] page_token
        #   If specified, returns the next page of insurance networks.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListInsuranceNetworksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListInsuranceNetworksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_insurance_networks(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/insuranceNetworks', options)
          command.response_representation = Google::Apis::MybusinessV4::ListInsuranceNetworksResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListInsuranceNetworksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new local post associated with the specified location, and returns
        # it.
        # @param [String] parent
        #   The name of the location in which to create this local post.
        # @param [Google::Apis::MybusinessV4::LocalPost] local_post_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::LocalPost] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::LocalPost]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location_local_post(parent, local_post_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/localPosts', options)
          command.request_representation = Google::Apis::MybusinessV4::LocalPost::Representation
          command.request_object = local_post_object
          command.response_representation = Google::Apis::MybusinessV4::LocalPost::Representation
          command.response_class = Google::Apis::MybusinessV4::LocalPost
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a local post. Returns `NOT_FOUND` if the local post does not exist.
        # @param [String] name
        #   The name of the local post to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_local_post(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified local post. Returns `NOT_FOUND` if the local post does not
        # exist.
        # @param [String] name
        #   The name of the local post to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::LocalPost] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::LocalPost]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_local_post(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::LocalPost::Representation
          command.response_class = Google::Apis::MybusinessV4::LocalPost
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of local posts associated with a location.
        # @param [String] parent
        #   The name of the location whose local posts will be listed.
        # @param [Fixnum] page_size
        #   How many local posts to return per page. Default of 20. The minimum is 1, and
        #   maximum page size is 100.
        # @param [String] page_token
        #   If specified, returns the next page of local posts.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListLocalPostsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListLocalPostsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_local_posts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/localPosts', options)
          command.response_representation = Google::Apis::MybusinessV4::ListLocalPostsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListLocalPostsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified local post and returns the updated local post.
        # @param [String] name
        #   The name of the local post to update.
        # @param [Google::Apis::MybusinessV4::LocalPost] local_post_object
        # @param [String] update_mask
        #   The specific fields to update. You must specify each field that is being
        #   updated in the mask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::LocalPost] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::LocalPost]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location_local_post(name, local_post_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::LocalPost::Representation
          command.request_object = local_post_object
          command.response_representation = Google::Apis::MybusinessV4::LocalPost::Representation
          command.response_class = Google::Apis::MybusinessV4::LocalPost
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns insights for a set of local posts associated with a single listing.
        # Which metrics and how they are reported are options specified in the request
        # proto. *Note:* Insight reports are limited to 100 `local_post_names` per call.
        # @param [String] name
        #   Required. The name of the location for which to fetch insights.
        # @param [Google::Apis::MybusinessV4::ReportLocalPostInsightsRequest] report_local_post_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ReportLocalPostInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ReportLocalPostInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_account_location_local_post_insights(name, report_local_post_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}/localPosts:reportInsights', options)
          command.request_representation = Google::Apis::MybusinessV4::ReportLocalPostInsightsRequest::Representation
          command.request_object = report_local_post_insights_request_object
          command.response_representation = Google::Apis::MybusinessV4::ReportLocalPostInsightsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ReportLocalPostInsightsResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Google updated Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/lodging`
        # @param [String] read_mask
        #   Optional. The specific fields to return. If no mask is specified, then it
        #   returns the full Lodging (same as "*"). Repeated field items cannot be
        #   individually specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::GetGoogleUpdatedLodgingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::GetGoogleUpdatedLodgingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_lodging_google_updated(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}:getGoogleUpdated', options)
          command.response_representation = Google::Apis::MybusinessV4::GetGoogleUpdatedLodgingResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::GetGoogleUpdatedLodgingResponse
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new media item for the location.
        # @param [String] parent
        #   The resource name of the location where this media item will be created.
        # @param [Google::Apis::MybusinessV4::MediaItem] media_item_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::MediaItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::MediaItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location_medium(parent, media_item_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/media', options)
          command.request_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.request_object = media_item_object
          command.response_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.response_class = Google::Apis::MybusinessV4::MediaItem
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified media item.
        # @param [String] name
        #   The name of the media item to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_medium(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns metadata for the requested media item.
        # @param [String] name
        #   The name of the requested media item.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::MediaItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::MediaItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_medium(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.response_class = Google::Apis::MybusinessV4::MediaItem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of media items associated with a location.
        # @param [String] parent
        #   The name of the location whose media items will be listed.
        # @param [Fixnum] page_size
        #   How many media items to return per page. The default value is 100, which is
        #   also the maximum supported number of media items able to be added to a
        #   location with the Google My Business API. Maximum page size is 2500.
        # @param [String] page_token
        #   If specified, returns the next page of media items.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListMediaItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListMediaItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_media(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/media', options)
          command.response_representation = Google::Apis::MybusinessV4::ListMediaItemsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListMediaItemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates metadata of the specified media item. This can only be used to update
        # the Category of a media item, with the exception that the new category cannot
        # be COVER or PROFILE.
        # @param [String] name
        #   The name of the media item to be updated.
        # @param [Google::Apis::MybusinessV4::MediaItem] media_item_object
        # @param [String] update_mask
        #   The specific fields to update. If no mask is specified, then this is treated
        #   as a full update and all editable fields are set to the values passed in.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::MediaItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::MediaItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location_medium(name, media_item_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.request_object = media_item_object
          command.response_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.response_class = Google::Apis::MybusinessV4::MediaItem
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a `MediaItemDataRef` for media item uploading.
        # @param [String] parent
        #   The resource name of the location this media item is to be added to.
        # @param [Google::Apis::MybusinessV4::StartUploadMediaItemDataRequest] start_upload_media_item_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::MediaItemDataRef] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::MediaItemDataRef]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_medium_upload_media_item_data(parent, start_upload_media_item_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/media:startUpload', options)
          command.request_representation = Google::Apis::MybusinessV4::StartUploadMediaItemDataRequest::Representation
          command.request_object = start_upload_media_item_data_request_object
          command.response_representation = Google::Apis::MybusinessV4::MediaItemDataRef::Representation
          command.response_class = Google::Apis::MybusinessV4::MediaItemDataRef
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns metadata for the requested customer media item.
        # @param [String] name
        #   The resource name of the requested customer media item.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::MediaItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::MediaItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_medium_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::MediaItem::Representation
          command.response_class = Google::Apis::MybusinessV4::MediaItem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of media items associated with a location that have been
        # contributed by customers.
        # @param [String] parent
        #   The name of the location whose customer media items will be listed.
        # @param [Fixnum] page_size
        #   How many media items to return per page. The default value is 100, the maximum
        #   supported page size is 200.
        # @param [String] page_token
        #   If specified, returns the next page of media items.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListCustomerMediaItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListCustomerMediaItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_medium_customers(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/media/customers', options)
          command.response_representation = Google::Apis::MybusinessV4::ListCustomerMediaItemsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListCustomerMediaItemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a question for the specified location.
        # @param [String] parent
        #   The name of the location to write a question for.
        # @param [Google::Apis::MybusinessV4::Question] question_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Question] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Question]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location_question(parent, question_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/questions', options)
          command.request_representation = Google::Apis::MybusinessV4::Question::Representation
          command.request_object = question_object
          command.response_representation = Google::Apis::MybusinessV4::Question::Representation
          command.response_class = Google::Apis::MybusinessV4::Question
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific question written by the current user.
        # @param [String] name
        #   The name of the question to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_question(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of questions and some of its answers for a
        # specified location.
        # @param [String] parent
        #   The name of the location to fetch questions for.
        # @param [Fixnum] answers_per_question
        #   How many answers to fetch per question. The default and maximum `
        #   answers_per_question` values are 10.
        # @param [String] filter
        #   A filter constraining the questions to return. The only filter currently
        #   supported is "ignore_answered=true"
        # @param [String] order_by
        #   The order to return the questions. Valid options include 'update_time desc'
        #   and 'upvote_count desc', which will return the questions sorted descendingly
        #   by the requested field. The default sort order is 'update_time desc'.
        # @param [Fixnum] page_size
        #   How many questions to fetch per page. The default and maximum `page_size`
        #   values are 10.
        # @param [String] page_token
        #   If specified, the next page of questions is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListQuestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListQuestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_questions(parent, answers_per_question: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/questions', options)
          command.response_representation = Google::Apis::MybusinessV4::ListQuestionsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListQuestionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['answersPerQuestion'] = answers_per_question unless answers_per_question.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specific question written by the current user.
        # @param [String] name
        #   The name of the question to update.
        # @param [Google::Apis::MybusinessV4::Question] question_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Question] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Question]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_location_question(name, question_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::MybusinessV4::Question::Representation
          command.request_object = question_object
          command.response_representation = Google::Apis::MybusinessV4::Question::Representation
          command.response_class = Google::Apis::MybusinessV4::Question
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the answer written by the current user to a question.
        # @param [String] parent
        #   The name of the question to delete an answer for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_question_answer(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+parent}/answers:delete', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of answers for a specified question.
        # @param [String] parent
        #   The name of the question to fetch answers for.
        # @param [String] order_by
        #   The order to return the answers. Valid options include 'update_time desc' and '
        #   upvote_count desc', which will return the answers sorted descendingly by the
        #   requested field. The default sort order is 'update_time desc'.
        # @param [Fixnum] page_size
        #   How many answers to fetch per page. The default and maximum `page_size` values
        #   are 10.
        # @param [String] page_token
        #   If specified, the next page of answers is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_question_answers(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/answers', options)
          command.response_representation = Google::Apis::MybusinessV4::ListAnswersResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an answer or updates the existing answer written by the user for the
        # specified question. A user can only create one answer per question.
        # @param [String] parent
        #   The name of the question to write an answer for.
        # @param [Google::Apis::MybusinessV4::UpsertAnswerRequest] upsert_answer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Answer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Answer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upsert_answer(parent, upsert_answer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/answers:upsert', options)
          command.request_representation = Google::Apis::MybusinessV4::UpsertAnswerRequest::Representation
          command.request_object = upsert_answer_request_object
          command.response_representation = Google::Apis::MybusinessV4::Answer::Representation
          command.response_class = Google::Apis::MybusinessV4::Answer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the response to the specified review. This operation is only valid if
        # the specified location is verified.
        # @param [String] name
        #   The name of the review reply to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_location_review_reply(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}/reply', options)
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified review. This operation is only valid if the specified
        # location is verified. Returns `NOT_FOUND` if the review does not exist, or has
        # been deleted.
        # @param [String] name
        #   The name of the review to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Review] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Review]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_location_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Review::Representation
          command.response_class = Google::Apis::MybusinessV4::Review
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of reviews for the specified location. This
        # operation is only valid if the specified location is verified.
        # @param [String] parent
        #   The name of the location to fetch reviews for.
        # @param [String] order_by
        #   Specifies the field to sort reviews by. If unspecified, the order of reviews
        #   returned will default to `update_time desc`. Valid orders to sort by are `
        #   rating`, `rating desc` and `update_time desc`.
        # @param [Fixnum] page_size
        #   How many reviews to fetch per page. The maximum `page_size` is 50.
        # @param [String] page_token
        #   If specified, it fetches the next page of reviews.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_reviews(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/reviews', options)
          command.response_representation = Google::Apis::MybusinessV4::ListReviewsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListReviewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the reply to the specified review. A reply is created if one does not
        # exist. This operation is only valid if the specified location is verified.
        # @param [String] name
        #   The name of the review to respond to.
        # @param [Google::Apis::MybusinessV4::ReviewReply] review_reply_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ReviewReply] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ReviewReply]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account_location_review_reply(name, review_reply_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v4/{+name}/reply', options)
          command.request_representation = Google::Apis::MybusinessV4::ReviewReply::Representation
          command.request_object = review_reply_object
          command.response_representation = Google::Apis::MybusinessV4::ReviewReply::Representation
          command.response_class = Google::Apis::MybusinessV4::ReviewReply
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes a `PENDING` verification. It is only necessary for non `AUTO`
        # verification methods. `AUTO` verification request is instantly `VERIFIED` upon
        # creation.
        # @param [String] name
        #   Resource name of the verification to complete.
        # @param [Google::Apis::MybusinessV4::CompleteVerificationRequest] complete_verification_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::CompleteVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::CompleteVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_verification(name, complete_verification_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:complete', options)
          command.request_representation = Google::Apis::MybusinessV4::CompleteVerificationRequest::Representation
          command.request_object = complete_verification_request_object
          command.response_representation = Google::Apis::MybusinessV4::CompleteVerificationResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::CompleteVerificationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List verifications of a location, ordered by create time.
        # @param [String] parent
        #   Resource name of the location that verification requests belong to.
        # @param [Fixnum] page_size
        #   How many verification to include per page. If not set, return all.
        # @param [String] page_token
        #   If specified, returns the next page of verifications.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListVerificationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListVerificationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_location_verifications(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/verifications', options)
          command.response_representation = Google::Apis::MybusinessV4::ListVerificationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListVerificationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of available attributes that would be available for a
        # location with the given primary category and country.
        # @param [String] category_id
        #   The primary category stable ID to find available attributes.
        # @param [String] country
        #   The ISO 3166-1 alpha-2 country code to find available attributes.
        # @param [String] language_code
        #   The BCP 47 code of language to get attribute display names in. If this
        #   language is not available, they will be provided in English.
        # @param [String] name
        #   Resource name of the location to look up available attributes.
        # @param [Fixnum] page_size
        #   How many attributes to include per page. Default is 200, minimum is 1.
        # @param [String] page_token
        #   If specified, the next page of attribute metadata is retrieved. The `pageToken`
        #   is returned when a call to `attributes.list` returns more results than can
        #   fit into the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListAttributeMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListAttributeMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_attributes(category_id: nil, country: nil, language_code: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/attributes', options)
          command.response_representation = Google::Apis::MybusinessV4::ListAttributeMetadataResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListAttributeMetadataResponse
          command.query['categoryId'] = category_id unless category_id.nil?
          command.query['country'] = country unless country.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of business categories for the provided language and GConcept
        # ids.
        # @param [Array<String>, String] category_ids
        #   Required. At least one name must be set. The GConcept ids the localized
        #   category names should be returned for.
        # @param [String] language_code
        #   Required. The BCP 47 code of language that the category names should be
        #   returned in.
        # @param [String] region_code
        #   Optional. The ISO 3166-1 alpha-2 country code used to infer non-standard
        #   language.
        # @param [String] view
        #   Required. Specifies which parts to the Category resource should be returned in
        #   the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::BatchGetBusinessCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::BatchGetBusinessCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_category_get(category_ids: nil, language_code: nil, region_code: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/categories:batchGet', options)
          command.response_representation = Google::Apis::MybusinessV4::BatchGetBusinessCategoriesResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::BatchGetBusinessCategoriesResponse
          command.query['categoryIds'] = category_ids unless category_ids.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of business categories. Search will match the category name but
        # not the category ID. *Note:* Search only matches the front of a category name (
        # that is, 'food' may return 'Food Court' but not 'Fast Food Restaurant').
        # @param [String] language_code
        #   The BCP 47 code of language. If the language is not available, it will default
        #   to English.
        # @param [Fixnum] page_size
        #   How many categories to fetch per page. Default is 100, minimum is 1, and
        #   maximum page size is 100.
        # @param [String] page_token
        #   If specified, the next page of categories will be fetched.
        # @param [String] region_code
        #   The ISO 3166-1 alpha-2 country code.
        # @param [String] search_term
        #   Optional filter string from user.
        # @param [String] view
        #   Optional. Specifies which parts to the Category resource should be returned in
        #   the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::ListBusinessCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::ListBusinessCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_categories(language_code: nil, page_size: nil, page_token: nil, region_code: nil, search_term: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/categories', options)
          command.response_representation = Google::Apis::MybusinessV4::ListBusinessCategoriesResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::ListBusinessCategoriesResponse
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['searchTerm'] = search_term unless search_term.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified chain. Returns `NOT_FOUND` if the chain does not exist.
        # @param [String] name
        #   The chain's resource name, in the format `chains/`chain_place_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Chain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Chain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_chain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::MybusinessV4::Chain::Representation
          command.response_class = Google::Apis::MybusinessV4::Chain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches the chain based on chain name.
        # @param [String] chain_display_name
        #   Search for a chain by its name. Exact/partial/fuzzy/related queries are
        #   supported. Examples: "walmart", "wal-mart", "walmmmart", "沃尔玛"
        # @param [Fixnum] result_count
        #   The maximum number of matched chains to return from this query. The default is
        #   10. The maximum possible value is 500.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::SearchChainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::SearchChainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_chains(chain_display_name: nil, result_count: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/chains:search', options)
          command.response_representation = Google::Apis::MybusinessV4::SearchChainsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::SearchChainsResponse
          command.query['chainDisplayName'] = chain_display_name unless chain_display_name.nil?
          command.query['resultCount'] = result_count unless result_count.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report a GoogleLocation.
        # @param [String] name
        #   Resource name of a [GoogleLocation], in the format `googleLocations/`
        #   googleLocationId``.
        # @param [Google::Apis::MybusinessV4::ReportGoogleLocationRequest] report_google_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_google_location(name, report_google_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+name}:report', options)
          command.request_representation = Google::Apis::MybusinessV4::ReportGoogleLocationRequest::Representation
          command.request_object = report_google_location_request_object
          command.response_representation = Google::Apis::MybusinessV4::Empty::Representation
          command.response_class = Google::Apis::MybusinessV4::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search all of the possible locations that are a match to the specified request.
        # @param [Google::Apis::MybusinessV4::SearchGoogleLocationsRequest] search_google_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessV4::SearchGoogleLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessV4::SearchGoogleLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_google_locations(search_google_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/googleLocations:search', options)
          command.request_representation = Google::Apis::MybusinessV4::SearchGoogleLocationsRequest::Representation
          command.request_object = search_google_locations_request_object
          command.response_representation = Google::Apis::MybusinessV4::SearchGoogleLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessV4::SearchGoogleLocationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
