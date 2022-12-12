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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module MybusinessV4
      
      # Request message for AccessControl.AcceptInvitation.
      class AcceptInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Physical adaptations made to the property in consideration of varying levels
      # of human physical ability.
      class Accessibility
        include Google::Apis::Core::Hashable
      
        # Mobility accessible. Throughout the property there are physical adaptations to
        # ease the stay of a person in a wheelchair, such as auto-opening doors, wide
        # elevators, wide bathrooms or ramps.
        # Corresponds to the JSON property `mobilityAccessible`
        # @return [Boolean]
        attr_accessor :mobility_accessible
        alias_method :mobility_accessible?, :mobility_accessible
      
        # Mobility accessible elevator. A lift that transports people from one level to
        # another and is built to accommodate a wheelchair-using passenger owing to the
        # width of its doors and placement of call buttons.
        # Corresponds to the JSON property `mobilityAccessibleElevator`
        # @return [Boolean]
        attr_accessor :mobility_accessible_elevator
        alias_method :mobility_accessible_elevator?, :mobility_accessible_elevator
      
        # Mobility accessible elevator exception.
        # Corresponds to the JSON property `mobilityAccessibleElevatorException`
        # @return [String]
        attr_accessor :mobility_accessible_elevator_exception
      
        # Mobility accessible exception.
        # Corresponds to the JSON property `mobilityAccessibleException`
        # @return [String]
        attr_accessor :mobility_accessible_exception
      
        # Mobility accessible parking. The presence of a marked, designated area of
        # prescribed size in which only registered, labeled vehicles transporting a
        # person with physical challenges may park.
        # Corresponds to the JSON property `mobilityAccessibleParking`
        # @return [Boolean]
        attr_accessor :mobility_accessible_parking
        alias_method :mobility_accessible_parking?, :mobility_accessible_parking
      
        # Mobility accessible parking exception.
        # Corresponds to the JSON property `mobilityAccessibleParkingException`
        # @return [String]
        attr_accessor :mobility_accessible_parking_exception
      
        # Mobility accessible pool. A swimming pool equipped with a mechanical chair
        # that can be lowered and raised for the purpose of moving physically challenged
        # guests into and out of the pool. May be powered by electricity or water. Also
        # known as pool lift.
        # Corresponds to the JSON property `mobilityAccessiblePool`
        # @return [Boolean]
        attr_accessor :mobility_accessible_pool
        alias_method :mobility_accessible_pool?, :mobility_accessible_pool
      
        # Mobility accessible pool exception.
        # Corresponds to the JSON property `mobilityAccessiblePoolException`
        # @return [String]
        attr_accessor :mobility_accessible_pool_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobility_accessible = args[:mobility_accessible] if args.key?(:mobility_accessible)
          @mobility_accessible_elevator = args[:mobility_accessible_elevator] if args.key?(:mobility_accessible_elevator)
          @mobility_accessible_elevator_exception = args[:mobility_accessible_elevator_exception] if args.key?(:mobility_accessible_elevator_exception)
          @mobility_accessible_exception = args[:mobility_accessible_exception] if args.key?(:mobility_accessible_exception)
          @mobility_accessible_parking = args[:mobility_accessible_parking] if args.key?(:mobility_accessible_parking)
          @mobility_accessible_parking_exception = args[:mobility_accessible_parking_exception] if args.key?(:mobility_accessible_parking_exception)
          @mobility_accessible_pool = args[:mobility_accessible_pool] if args.key?(:mobility_accessible_pool)
          @mobility_accessible_pool_exception = args[:mobility_accessible_pool_exception] if args.key?(:mobility_accessible_pool_exception)
        end
      end
      
      # An account is a container for your business's locations. If you are the only
      # user who manages locations for your business, you can use your personal Google
      # Account. To share management of locations with multiple users, [create a
      # business account] (https://support.google.com/business/answer/6085339?
      # ref_topic=6085325).
      class Account
        include Google::Apis::Core::Hashable
      
        # The name of the account. *Note:* For an account with AccountType `PERSONAL`,
        # this is the first and last name of the user account.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # Account reference number if provisioned.
        # Corresponds to the JSON property `accountNumber`
        # @return [String]
        attr_accessor :account_number
      
        # The resource name, in the format `accounts/`account_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional Info stored for an organization.
        # Corresponds to the JSON property `organizationInfo`
        # @return [Google::Apis::MybusinessV4::OrganizationInfo]
        attr_accessor :organization_info
      
        # Output only. Specifies the PermissionLevel the caller has for this account.
        # Corresponds to the JSON property `permissionLevel`
        # @return [String]
        attr_accessor :permission_level
      
        # Output only. Specifies the AccountRole the caller has for this account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates status of the account, such as whether the account has been verified
        # by Google.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::MybusinessV4::AccountState]
        attr_accessor :state
      
        # Output only. Specifies the AccountType of this account.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_name = args[:account_name] if args.key?(:account_name)
          @account_number = args[:account_number] if args.key?(:account_number)
          @name = args[:name] if args.key?(:name)
          @organization_info = args[:organization_info] if args.key?(:organization_info)
          @permission_level = args[:permission_level] if args.key?(:permission_level)
          @role = args[:role] if args.key?(:role)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Indicates status of the account, such as whether the account has been verified
      # by Google.
      class AccountState
        include Google::Apis::Core::Hashable
      
        # If verified, future locations that are created are automatically connected to
        # Google Maps, and have Google+ pages created, without requiring moderation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Amenities and features related to leisure and play.
      class Activities
        include Google::Apis::Core::Hashable
      
        # Beach access. The hotel property is in close proximity to a beach and offers a
        # way to get to that beach. This can include a route to the beach such as stairs
        # down if hotel is on a bluff, or a short trail. Not the same as beachfront (
        # with beach access, the hotel's proximity is close to but not right on the
        # beach).
        # Corresponds to the JSON property `beachAccess`
        # @return [Boolean]
        attr_accessor :beach_access
        alias_method :beach_access?, :beach_access
      
        # Beach access exception.
        # Corresponds to the JSON property `beachAccessException`
        # @return [String]
        attr_accessor :beach_access_exception
      
        # Breach front. The hotel property is physically located on the beach alongside
        # an ocean, sea, gulf, or bay. It is not on a lake, river, stream, or pond. The
        # hotel is not separated from the beach by a public road allowing vehicular,
        # pedestrian, or bicycle traffic.
        # Corresponds to the JSON property `beachFront`
        # @return [Boolean]
        attr_accessor :beach_front
        alias_method :beach_front?, :beach_front
      
        # Beach front exception.
        # Corresponds to the JSON property `beachFrontException`
        # @return [String]
        attr_accessor :beach_front_exception
      
        # Bicycle rental. The hotel owns bicycles that it permits guests to borrow and
        # use. Can be free or for a fee.
        # Corresponds to the JSON property `bicycleRental`
        # @return [Boolean]
        attr_accessor :bicycle_rental
        alias_method :bicycle_rental?, :bicycle_rental
      
        # Bicycle rental exception.
        # Corresponds to the JSON property `bicycleRentalException`
        # @return [String]
        attr_accessor :bicycle_rental_exception
      
        # Boutique stores. There are stores selling clothing, jewelry, art and decor
        # either on hotel premises or very close by. Does not refer to the hotel gift
        # shop or convenience store.
        # Corresponds to the JSON property `boutiqueStores`
        # @return [Boolean]
        attr_accessor :boutique_stores
        alias_method :boutique_stores?, :boutique_stores
      
        # Boutique stores exception.
        # Corresponds to the JSON property `boutiqueStoresException`
        # @return [String]
        attr_accessor :boutique_stores_exception
      
        # Casino. A space designated for gambling and gaming featuring croupier-run
        # table and card games, as well as electronic slot machines. May be on hotel
        # premises or located nearby.
        # Corresponds to the JSON property `casino`
        # @return [Boolean]
        attr_accessor :casino
        alias_method :casino?, :casino
      
        # Casino exception.
        # Corresponds to the JSON property `casinoException`
        # @return [String]
        attr_accessor :casino_exception
      
        # Free bicycle rental. The hotel owns bicycles that it permits guests to borrow
        # and use for free.
        # Corresponds to the JSON property `freeBicycleRental`
        # @return [Boolean]
        attr_accessor :free_bicycle_rental
        alias_method :free_bicycle_rental?, :free_bicycle_rental
      
        # Free bicycle rental exception.
        # Corresponds to the JSON property `freeBicycleRentalException`
        # @return [String]
        attr_accessor :free_bicycle_rental_exception
      
        # Free watercraft rental. The hotel owns watercraft that it permits guests to
        # borrow and use for free.
        # Corresponds to the JSON property `freeWatercraftRental`
        # @return [Boolean]
        attr_accessor :free_watercraft_rental
        alias_method :free_watercraft_rental?, :free_watercraft_rental
      
        # Free Watercraft rental exception.
        # Corresponds to the JSON property `freeWatercraftRentalException`
        # @return [String]
        attr_accessor :free_watercraft_rental_exception
      
        # Game room. There is a room at the hotel containing electronic machines for
        # play such as pinball, prize machines, driving simulators, and other items
        # commonly found at a family fun center or arcade. May also include non-
        # electronic games like pool, foosball, darts, and more. May or may not be
        # designed for children. Also known as arcade, fun room, or family fun center.
        # Corresponds to the JSON property `gameRoom`
        # @return [Boolean]
        attr_accessor :game_room
        alias_method :game_room?, :game_room
      
        # Game room exception.
        # Corresponds to the JSON property `gameRoomException`
        # @return [String]
        attr_accessor :game_room_exception
      
        # Golf. There is a golf course on hotel grounds or there is a nearby,
        # independently run golf course that allows use by hotel guests. Can be free or
        # for a fee.
        # Corresponds to the JSON property `golf`
        # @return [Boolean]
        attr_accessor :golf
        alias_method :golf?, :golf
      
        # Golf exception.
        # Corresponds to the JSON property `golfException`
        # @return [String]
        attr_accessor :golf_exception
      
        # Horseback riding. The hotel has a horse barn onsite or an affiliation with a
        # nearby barn to allow for guests to sit astride a horse and direct it to walk,
        # trot, cantor, gallop and/or jump. Can be in a riding ring, on designated paths,
        # or in the wilderness. May or may not involve instruction.
        # Corresponds to the JSON property `horsebackRiding`
        # @return [Boolean]
        attr_accessor :horseback_riding
        alias_method :horseback_riding?, :horseback_riding
      
        # Horseback riding exception.
        # Corresponds to the JSON property `horsebackRidingException`
        # @return [String]
        attr_accessor :horseback_riding_exception
      
        # Nightclub. There is a room at the hotel with a bar, a dance floor, and seating
        # where designated staffers play dance music. There may also be a designated
        # area for the performance of live music, singing and comedy acts.
        # Corresponds to the JSON property `nightclub`
        # @return [Boolean]
        attr_accessor :nightclub
        alias_method :nightclub?, :nightclub
      
        # Nightclub exception.
        # Corresponds to the JSON property `nightclubException`
        # @return [String]
        attr_accessor :nightclub_exception
      
        # Private beach. The beach which is in close proximity to the hotel is open only
        # to guests.
        # Corresponds to the JSON property `privateBeach`
        # @return [Boolean]
        attr_accessor :private_beach
        alias_method :private_beach?, :private_beach
      
        # Private beach exception.
        # Corresponds to the JSON property `privateBeachException`
        # @return [String]
        attr_accessor :private_beach_exception
      
        # Scuba. The provision for guests to dive under naturally occurring water fitted
        # with a self-contained underwater breathing apparatus (SCUBA) for the purpose
        # of exploring underwater life. Apparatus consists of a tank providing oxygen to
        # the diver through a mask. Requires certification of the diver and supervision.
        # The hotel may have the activity at its own waterfront or have an affiliation
        # with a nearby facility. Required equipment is most often supplied to guests.
        # Can be free or for a fee. Not snorkeling. Not done in a swimming pool.
        # Corresponds to the JSON property `scuba`
        # @return [Boolean]
        attr_accessor :scuba
        alias_method :scuba?, :scuba
      
        # Scuba exception.
        # Corresponds to the JSON property `scubaException`
        # @return [String]
        attr_accessor :scuba_exception
      
        # Snorkeling. The provision for guests to participate in a recreational water
        # activity in which swimmers wear a diving mask, a simple, shaped breathing tube
        # and flippers/swim fins for the purpose of exploring below the surface of an
        # ocean, gulf or lake. Does not usually require user certification or
        # professional supervision. Equipment may or may not be available for rent or
        # purchase. Not scuba diving.
        # Corresponds to the JSON property `snorkeling`
        # @return [Boolean]
        attr_accessor :snorkeling
        alias_method :snorkeling?, :snorkeling
      
        # Snorkeling exception.
        # Corresponds to the JSON property `snorkelingException`
        # @return [String]
        attr_accessor :snorkeling_exception
      
        # Tennis. The hotel has the requisite court(s) on site or has an affiliation
        # with a nearby facility for the purpose of providing guests with the
        # opportunity to play a two-sided court-based game in which players use a
        # stringed racquet to hit a ball across a net to the side of the opposing player.
        # The court can be indoors or outdoors. Instructors, racquets and balls may or
        # may not be provided.
        # Corresponds to the JSON property `tennis`
        # @return [Boolean]
        attr_accessor :tennis
        alias_method :tennis?, :tennis
      
        # Tennis exception.
        # Corresponds to the JSON property `tennisException`
        # @return [String]
        attr_accessor :tennis_exception
      
        # Water skiing. The provision of giving guests the opportunity to be pulled
        # across naturally occurring water while standing on skis and holding a tow rope
        # attached to a motorboat. Can occur on hotel premises or at a nearby waterfront.
        # Most often performed in a lake or ocean.
        # Corresponds to the JSON property `waterSkiing`
        # @return [Boolean]
        attr_accessor :water_skiing
        alias_method :water_skiing?, :water_skiing
      
        # Water skiing exception.
        # Corresponds to the JSON property `waterSkiingException`
        # @return [String]
        attr_accessor :water_skiing_exception
      
        # Watercraft rental. The hotel owns water vessels that it permits guests to
        # borrow and use. Can be free or for a fee. Watercraft may include boats, pedal
        # boats, rowboats, sailboats, powerboats, canoes, kayaks, or personal watercraft
        # (such as a Jet Ski).
        # Corresponds to the JSON property `watercraftRental`
        # @return [Boolean]
        attr_accessor :watercraft_rental
        alias_method :watercraft_rental?, :watercraft_rental
      
        # Watercraft rental exception.
        # Corresponds to the JSON property `watercraftRentalException`
        # @return [String]
        attr_accessor :watercraft_rental_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beach_access = args[:beach_access] if args.key?(:beach_access)
          @beach_access_exception = args[:beach_access_exception] if args.key?(:beach_access_exception)
          @beach_front = args[:beach_front] if args.key?(:beach_front)
          @beach_front_exception = args[:beach_front_exception] if args.key?(:beach_front_exception)
          @bicycle_rental = args[:bicycle_rental] if args.key?(:bicycle_rental)
          @bicycle_rental_exception = args[:bicycle_rental_exception] if args.key?(:bicycle_rental_exception)
          @boutique_stores = args[:boutique_stores] if args.key?(:boutique_stores)
          @boutique_stores_exception = args[:boutique_stores_exception] if args.key?(:boutique_stores_exception)
          @casino = args[:casino] if args.key?(:casino)
          @casino_exception = args[:casino_exception] if args.key?(:casino_exception)
          @free_bicycle_rental = args[:free_bicycle_rental] if args.key?(:free_bicycle_rental)
          @free_bicycle_rental_exception = args[:free_bicycle_rental_exception] if args.key?(:free_bicycle_rental_exception)
          @free_watercraft_rental = args[:free_watercraft_rental] if args.key?(:free_watercraft_rental)
          @free_watercraft_rental_exception = args[:free_watercraft_rental_exception] if args.key?(:free_watercraft_rental_exception)
          @game_room = args[:game_room] if args.key?(:game_room)
          @game_room_exception = args[:game_room_exception] if args.key?(:game_room_exception)
          @golf = args[:golf] if args.key?(:golf)
          @golf_exception = args[:golf_exception] if args.key?(:golf_exception)
          @horseback_riding = args[:horseback_riding] if args.key?(:horseback_riding)
          @horseback_riding_exception = args[:horseback_riding_exception] if args.key?(:horseback_riding_exception)
          @nightclub = args[:nightclub] if args.key?(:nightclub)
          @nightclub_exception = args[:nightclub_exception] if args.key?(:nightclub_exception)
          @private_beach = args[:private_beach] if args.key?(:private_beach)
          @private_beach_exception = args[:private_beach_exception] if args.key?(:private_beach_exception)
          @scuba = args[:scuba] if args.key?(:scuba)
          @scuba_exception = args[:scuba_exception] if args.key?(:scuba_exception)
          @snorkeling = args[:snorkeling] if args.key?(:snorkeling)
          @snorkeling_exception = args[:snorkeling_exception] if args.key?(:snorkeling_exception)
          @tennis = args[:tennis] if args.key?(:tennis)
          @tennis_exception = args[:tennis_exception] if args.key?(:tennis_exception)
          @water_skiing = args[:water_skiing] if args.key?(:water_skiing)
          @water_skiing_exception = args[:water_skiing_exception] if args.key?(:water_skiing_exception)
          @watercraft_rental = args[:watercraft_rental] if args.key?(:watercraft_rental)
          @watercraft_rental_exception = args[:watercraft_rental_exception] if args.key?(:watercraft_rental_exception)
        end
      end
      
      # Additional information that is surfaced in AdWords.
      class AdWordsLocationExtensions
        include Google::Apis::Core::Hashable
      
        # An alternate phone number to display on AdWords location extensions instead of
        # the location's primary phone number.
        # Corresponds to the JSON property `adPhone`
        # @return [String]
        attr_accessor :ad_phone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_phone = args[:ad_phone] if args.key?(:ad_phone)
        end
      end
      
      # Input for ADDRESS verification.
      class AddressInput
        include Google::Apis::Core::Hashable
      
        # Contact name the mail should be sent to.
        # Corresponds to the JSON property `mailerContactName`
        # @return [String]
        attr_accessor :mailer_contact_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mailer_contact_name = args[:mailer_contact_name] if args.key?(:mailer_contact_name)
        end
      end
      
      # Display data for verifications through postcard.
      class AddressVerificationData
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :address
      
        # Merchant's business name.
        # Corresponds to the JSON property `businessName`
        # @return [String]
        attr_accessor :business_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @business_name = args[:business_name] if args.key?(:business_name)
        end
      end
      
      # An administrator of an Account or a Location.
      class Admin
        include Google::Apis::Core::Hashable
      
        # The name of the admin. When making the initial invitation, this is the invitee'
        # s email address. On `GET` calls, the user's email address is returned if the
        # invitation is still pending. Otherwise, it contains the user's first and last
        # names.
        # Corresponds to the JSON property `adminName`
        # @return [String]
        attr_accessor :admin_name
      
        # The resource name. For account admins, this is in the form: `accounts/`
        # account_id`/admins/`admin_id`` For location admins, this is in the form: `
        # accounts/`account_id`/locations/`location_id`/admins/`admin_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Indicates whether this admin has a pending invitation for the
        # specified resource.
        # Corresponds to the JSON property `pendingInvitation`
        # @return [Boolean]
        attr_accessor :pending_invitation
        alias_method :pending_invitation?, :pending_invitation
      
        # Specifies the AdminRole that this admin uses with the specified Account or
        # Location resource.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_name = args[:admin_name] if args.key?(:admin_name)
          @name = args[:name] if args.key?(:name)
          @pending_invitation = args[:pending_invitation] if args.key?(:pending_invitation)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Represents an answer to a question
      class Answer
        include Google::Apis::Core::Hashable
      
        # Represents the author of a question or answer
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::MybusinessV4::Author]
        attr_accessor :author
      
        # Output only. The timestamp for when the answer was written.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique name for the answer accounts/*/locations/*/questions/*/
        # answers/*
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The text of the answer. It should contain at least one non-whitespace
        # character. The maximum length is 4096 characters.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. The timestamp for when the answer was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The number of upvotes for the answer.
        # Corresponds to the JSON property `upvoteCount`
        # @return [Fixnum]
        attr_accessor :upvote_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @text = args[:text] if args.key?(:text)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upvote_count = args[:upvote_count] if args.key?(:upvote_count)
        end
      end
      
      # Request message for Locations.AssociateLocationRequest.
      class AssociateLocationRequest
        include Google::Apis::Core::Hashable
      
        # The association to establish. If not set, it indicates no match.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # A location attribute. Attributes provide additional information about a
      # location. The attributes that can be set on a location may vary based on the
      # properties of that location (for example, category). Available attributes are
      # determined by Google and may be added and removed without API changes.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # The ID of the attribute. Attribute IDs are provided by Google.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of
        # two lists of value IDs: those that are set (true) and those that are unset (
        # false). Values absent are considered unknown. At least one value must be
        # specified.
        # Corresponds to the JSON property `repeatedEnumValue`
        # @return [Google::Apis::MybusinessV4::RepeatedEnumAttributeValue]
        attr_accessor :repeated_enum_value
      
        # When the attribute value type is URL, this field contains the value(s) for
        # this attribute, and the other values fields must be empty.
        # Corresponds to the JSON property `urlValues`
        # @return [Array<Google::Apis::MybusinessV4::UrlAttributeValue>]
        attr_accessor :url_values
      
        # Output only. The type of value that this attribute contains. This should be
        # used to determine how to interpret the value.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # The values for this attribute. The type of the values supplied must match that
        # expected for that attribute; see [AttributeValueType](/my-business/reference/
        # rest/v4/AttributeValueType). This is a repeated field where multiple attribute
        # values may be provided. Attribute types only support one value.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @repeated_enum_value = args[:repeated_enum_value] if args.key?(:repeated_enum_value)
          @url_values = args[:url_values] if args.key?(:url_values)
          @value_type = args[:value_type] if args.key?(:value_type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata for an attribute. Contains display information for the attribute,
      # including a localized name and a heading for grouping related attributes
      # together.
      class AttributeMetadata
        include Google::Apis::Core::Hashable
      
        # The ID of the attribute.
        # Corresponds to the JSON property `attributeId`
        # @return [String]
        attr_accessor :attribute_id
      
        # The localized display name for the attribute, if available; otherwise, the
        # English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The localized display name of the group that contains this attribute, if
        # available; otherwise, the English group name. Related attributes are collected
        # into a group and should be displayed together under the heading given here.
        # Corresponds to the JSON property `groupDisplayName`
        # @return [String]
        attr_accessor :group_display_name
      
        # If true, the attribute is deprecated and should no longer be used. If
        # deprecated, updating this attribute will not result in an error, but updates
        # will not be saved. At some point after being deprecated, the attribute will be
        # removed entirely and it will become an error.
        # Corresponds to the JSON property `isDeprecated`
        # @return [Boolean]
        attr_accessor :is_deprecated
        alias_method :is_deprecated?, :is_deprecated
      
        # If true, the attribute supports multiple values. If false, only a single value
        # should be provided.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # For some types of attributes (for example, enums), a list of supported values
        # and corresponding display names for those values is provided.
        # Corresponds to the JSON property `valueMetadata`
        # @return [Array<Google::Apis::MybusinessV4::AttributeValueMetadata>]
        attr_accessor :value_metadata
      
        # The value type for the attribute. Values set and retrieved should be expected
        # to be of this type.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_id = args[:attribute_id] if args.key?(:attribute_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @group_display_name = args[:group_display_name] if args.key?(:group_display_name)
          @is_deprecated = args[:is_deprecated] if args.key?(:is_deprecated)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @value_metadata = args[:value_metadata] if args.key?(:value_metadata)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Metadata for supported attribute values.
      class AttributeValueMetadata
        include Google::Apis::Core::Hashable
      
        # The display name for this value, localized where available; otherwise, in
        # English. The value display name is intended to be used in context with the
        # attribute display name. For example, for a "WiFi" enum attribute, this could
        # contain "Paid" to represent paid Wi-Fi.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The attribute value.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Attribution information for customer media items, such as the contributor's
      # name and profile picture.
      class Attribution
        include Google::Apis::Core::Hashable
      
        # The user name to attribute the media item to.
        # Corresponds to the JSON property `profileName`
        # @return [String]
        attr_accessor :profile_name
      
        # URL of the attributed user's profile photo thumbnail.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        # The URL of the attributed user's Google Maps profile page.
        # Corresponds to the JSON property `profileUrl`
        # @return [String]
        attr_accessor :profile_url
      
        # The URL of the takedown page, where the media item can be reported if it is
        # inappropriate.
        # Corresponds to the JSON property `takedownUrl`
        # @return [String]
        attr_accessor :takedown_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_name = args[:profile_name] if args.key?(:profile_name)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
          @profile_url = args[:profile_url] if args.key?(:profile_url)
          @takedown_url = args[:takedown_url] if args.key?(:takedown_url)
        end
      end
      
      # Represents the author of a question or answer
      class Author
        include Google::Apis::Core::Hashable
      
        # The display name of the user
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The profile photo URL of the user.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        # The type of user the author is.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A request for basic metric insights.
      class BasicMetricsRequest
        include Google::Apis::Core::Hashable
      
        # A collection of metrics to return values for including the options for how the
        # data should be returned.
        # Corresponds to the JSON property `metricRequests`
        # @return [Array<Google::Apis::MybusinessV4::MetricRequest>]
        attr_accessor :metric_requests
      
        # A range of time. Data will be pulled over the range as a half-open inverval (
        # that is, [start_time, end_time)).
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::MybusinessV4::TimeRange]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_requests = args[:metric_requests] if args.key?(:metric_requests)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Response message for BusinessCategories.BatchGetBusinessCategories.
      class BatchGetBusinessCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # Categories that match the GConcept ids provided in the request. They will not
        # come in the same order as category ids in the request.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::MybusinessV4::Category>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
        end
      end
      
      # Request message for Locations.BatchGetLocations.
      class BatchGetLocationsRequest
        include Google::Apis::Core::Hashable
      
        # A collection of locations to fetch, specified by their names.
        # Corresponds to the JSON property `locationNames`
        # @return [Array<String>]
        attr_accessor :location_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_names = args[:location_names] if args.key?(:location_names)
        end
      end
      
      # Response message for Locations.BatchGetLocations.
      class BatchGetLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV4::Location>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # Request message for Reviews.BatchGetReviews.
      class BatchGetReviewsRequest
        include Google::Apis::Core::Hashable
      
        # Whether to ignore rating-only reviews.
        # Corresponds to the JSON property `ignoreRatingOnlyReviews`
        # @return [Boolean]
        attr_accessor :ignore_rating_only_reviews
        alias_method :ignore_rating_only_reviews?, :ignore_rating_only_reviews
      
        # A collection of locations to fetch reviews for, specified by their names.
        # Corresponds to the JSON property `locationNames`
        # @return [Array<String>]
        attr_accessor :location_names
      
        # Optional. Specifies the field to sort reviews by. If unspecified, the order of
        # reviews returned will default to `update_time desc`. Valid orders to sort by
        # are `rating`, `rating desc` and `update_time desc`. `rating` will return
        # reviews in ascending order. `update_time`(i.e. ascending order) is not
        # supported.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # How many reviews to fetch per page. The default value is 200.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # If specified, it fetches the next page of reviews.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_rating_only_reviews = args[:ignore_rating_only_reviews] if args.key?(:ignore_rating_only_reviews)
          @location_names = args[:location_names] if args.key?(:location_names)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response message for Reviews.BatchGetReviews.
      class BatchGetReviewsResponse
        include Google::Apis::Core::Hashable
      
        # Reviews with location information.
        # Corresponds to the JSON property `locationReviews`
        # @return [Array<Google::Apis::MybusinessV4::LocationReview>]
        attr_accessor :location_reviews
      
        # If the number of reviews exceeded the requested page size, this field is
        # populated with a token to fetch the next page of reviews on a subsequent calls.
        # If there are no more reviews, this field will not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_reviews = args[:location_reviews] if args.key?(:location_reviews)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Features of the property of specific interest to the business traveler.
      class Business
        include Google::Apis::Core::Hashable
      
        # Business center. A designated room at the hotel with one or more desks and
        # equipped with guest-use computers, printers, fax machines and/or photocopiers.
        # May or may not be open 24/7. May or may not require a key to access. Not a
        # meeting room or conference room.
        # Corresponds to the JSON property `businessCenter`
        # @return [Boolean]
        attr_accessor :business_center
        alias_method :business_center?, :business_center
      
        # Business center exception.
        # Corresponds to the JSON property `businessCenterException`
        # @return [String]
        attr_accessor :business_center_exception
      
        # Meeting rooms. Rooms at the hotel designated for business-related gatherings.
        # Rooms are usually equipped with tables or desks, office chairs and audio/
        # visual facilities to allow for presentations and conference calls. Also known
        # as conference rooms.
        # Corresponds to the JSON property `meetingRooms`
        # @return [Boolean]
        attr_accessor :meeting_rooms
        alias_method :meeting_rooms?, :meeting_rooms
      
        # Meeting rooms count. The number of meeting rooms at the property.
        # Corresponds to the JSON property `meetingRoomsCount`
        # @return [Fixnum]
        attr_accessor :meeting_rooms_count
      
        # Meeting rooms count exception.
        # Corresponds to the JSON property `meetingRoomsCountException`
        # @return [String]
        attr_accessor :meeting_rooms_count_exception
      
        # Meeting rooms exception.
        # Corresponds to the JSON property `meetingRoomsException`
        # @return [String]
        attr_accessor :meeting_rooms_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_center = args[:business_center] if args.key?(:business_center)
          @business_center_exception = args[:business_center_exception] if args.key?(:business_center_exception)
          @meeting_rooms = args[:meeting_rooms] if args.key?(:meeting_rooms)
          @meeting_rooms_count = args[:meeting_rooms_count] if args.key?(:meeting_rooms_count)
          @meeting_rooms_count_exception = args[:meeting_rooms_count_exception] if args.key?(:meeting_rooms_count_exception)
          @meeting_rooms_exception = args[:meeting_rooms_exception] if args.key?(:meeting_rooms_exception)
        end
      end
      
      # Represents the time periods that this location is open for business. Holds a
      # collection of TimePeriod instances.
      class BusinessHours
        include Google::Apis::Core::Hashable
      
        # A collection of times that this location is open for business. Each period
        # represents a range of hours when the location is open during the week.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::MybusinessV4::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # An action that is performed when the user clicks through the post
      class CallToAction
        include Google::Apis::Core::Hashable
      
        # The type of action that will be performed.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # The URL the user will be directed to upon clicking. This field should be left
        # unset for Call CTA.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # This message denotes calories information with an upper bound and lower bound
      # range. Lower amount must be specified. Both lower and upper amounts are non-
      # negative numbers.
      class CaloriesFact
        include Google::Apis::Core::Hashable
      
        # Required. Lower amount of calories
        # Corresponds to the JSON property `lowerAmount`
        # @return [Fixnum]
        attr_accessor :lower_amount
      
        # Required. Unit of the given calories information.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Optional. Upper amount of calories
        # Corresponds to the JSON property `upperAmount`
        # @return [Fixnum]
        attr_accessor :upper_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_amount = args[:lower_amount] if args.key?(:lower_amount)
          @unit = args[:unit] if args.key?(:unit)
          @upper_amount = args[:upper_amount] if args.key?(:upper_amount)
        end
      end
      
      # A category describing what this business is (not what it does). For a list of
      # valid category IDs, and the mappings to their human-readable names, see [
      # categories.list](https://developers.google.com/my-business/reference/rest/v4/
      # categories/list).
      class Category
        include Google::Apis::Core::Hashable
      
        # @OutputOnly. A stable ID (provided by Google) for this category. The `
        # category_id` must be specified when modifying the category (when creating or
        # updating a location).
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # @OutputOnly. The human-readable name of the category. This is set when reading
        # the location. When modifying the location, `category_id` must be set.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. More hours types that are available for this business category.
        # Corresponds to the JSON property `moreHoursTypes`
        # @return [Array<Google::Apis::MybusinessV4::MoreHoursType>]
        attr_accessor :more_hours_types
      
        # @OutputOnly. A list of all the service types that are available for this
        # business category.
        # Corresponds to the JSON property `serviceTypes`
        # @return [Array<Google::Apis::MybusinessV4::ServiceType>]
        attr_accessor :service_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @more_hours_types = args[:more_hours_types] if args.key?(:more_hours_types)
          @service_types = args[:service_types] if args.key?(:service_types)
        end
      end
      
      # A chain is a brand that your business's locations can be affiliated with.
      class Chain
        include Google::Apis::Core::Hashable
      
        # Names of the chain.
        # Corresponds to the JSON property `chainNames`
        # @return [Array<Google::Apis::MybusinessV4::ChainName>]
        attr_accessor :chain_names
      
        # Number of locations that are part of this chain.
        # Corresponds to the JSON property `locationCount`
        # @return [Fixnum]
        attr_accessor :location_count
      
        # The chain's resource name, in the format `chains/`chain_place_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Websites of the chain.
        # Corresponds to the JSON property `websites`
        # @return [Array<Google::Apis::MybusinessV4::ChainUrl>]
        attr_accessor :websites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chain_names = args[:chain_names] if args.key?(:chain_names)
          @location_count = args[:location_count] if args.key?(:location_count)
          @name = args[:name] if args.key?(:name)
          @websites = args[:websites] if args.key?(:websites)
        end
      end
      
      # Name to be used when displaying the chain.
      class ChainName
        include Google::Apis::Core::Hashable
      
        # The display name for this chain.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The BCP 47 code of language of the name.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Url to be used when displaying the chain.
      class ChainUrl
        include Google::Apis::Core::Hashable
      
        # The url for this chain.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Request message for Locations.ClearLocationAssociationRequest.
      class ClearLocationAssociationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for Verifications.CompleteVerificationAction.
      class CompleteVerificationRequest
        include Google::Apis::Core::Hashable
      
        # PIN code received by the merchant to complete the verification.
        # Corresponds to the JSON property `pin`
        # @return [String]
        attr_accessor :pin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pin = args[:pin] if args.key?(:pin)
        end
      end
      
      # Response message for Verifications.CompleteVerificationAction.
      class CompleteVerificationResponse
        include Google::Apis::Core::Hashable
      
        # A verification represents a verification attempt on a location.
        # Corresponds to the JSON property `verification`
        # @return [Google::Apis::MybusinessV4::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
        end
      end
      
      # The ways in which the property provides guests with the ability to access the
      # internet.
      class Connectivity
        include Google::Apis::Core::Hashable
      
        # Free wifi. The hotel offers guests wifi for free.
        # Corresponds to the JSON property `freeWifi`
        # @return [Boolean]
        attr_accessor :free_wifi
        alias_method :free_wifi?, :free_wifi
      
        # Free wifi exception.
        # Corresponds to the JSON property `freeWifiException`
        # @return [String]
        attr_accessor :free_wifi_exception
      
        # Public area wifi available. Guests have the ability to wirelessly connect to
        # the internet in the areas of the hotel accessible to anyone. Can be free or
        # for a fee.
        # Corresponds to the JSON property `publicAreaWifiAvailable`
        # @return [Boolean]
        attr_accessor :public_area_wifi_available
        alias_method :public_area_wifi_available?, :public_area_wifi_available
      
        # Public area wifi available exception.
        # Corresponds to the JSON property `publicAreaWifiAvailableException`
        # @return [String]
        attr_accessor :public_area_wifi_available_exception
      
        # Public internet terminal. An area of the hotel supplied with computers and
        # designated for the purpose of providing guests with the ability to access the
        # internet.
        # Corresponds to the JSON property `publicInternetTerminal`
        # @return [Boolean]
        attr_accessor :public_internet_terminal
        alias_method :public_internet_terminal?, :public_internet_terminal
      
        # Public internet terminal exception.
        # Corresponds to the JSON property `publicInternetTerminalException`
        # @return [String]
        attr_accessor :public_internet_terminal_exception
      
        # Wifi available. The hotel provides the ability for guests to wirelessly
        # connect to the internet. Can be in the public areas of the hotel and/or in the
        # guest rooms. Can be free or for a fee.
        # Corresponds to the JSON property `wifiAvailable`
        # @return [Boolean]
        attr_accessor :wifi_available
        alias_method :wifi_available?, :wifi_available
      
        # Wifi available exception.
        # Corresponds to the JSON property `wifiAvailableException`
        # @return [String]
        attr_accessor :wifi_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_wifi = args[:free_wifi] if args.key?(:free_wifi)
          @free_wifi_exception = args[:free_wifi_exception] if args.key?(:free_wifi_exception)
          @public_area_wifi_available = args[:public_area_wifi_available] if args.key?(:public_area_wifi_available)
          @public_area_wifi_available_exception = args[:public_area_wifi_available_exception] if args.key?(:public_area_wifi_available_exception)
          @public_internet_terminal = args[:public_internet_terminal] if args.key?(:public_internet_terminal)
          @public_internet_terminal_exception = args[:public_internet_terminal_exception] if args.key?(:public_internet_terminal_exception)
          @wifi_available = args[:wifi_available] if args.key?(:wifi_available)
          @wifi_available_exception = args[:wifi_available_exception] if args.key?(:wifi_available_exception)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Request message for AccessControl.DeclineInvitation.
      class DeclineInvitationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A value for a single metric with a given time dimension.
      class DimensionalMetricValue
        include Google::Apis::Core::Hashable
      
        # The option that requested this dimensional value.
        # Corresponds to the JSON property `metricOption`
        # @return [String]
        attr_accessor :metric_option
      
        # The dimension for which data is divided over.
        # Corresponds to the JSON property `timeDimension`
        # @return [Google::Apis::MybusinessV4::TimeDimension]
        attr_accessor :time_dimension
      
        # The value. If no value is set, then the requested data is missing.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric_option = args[:metric_option] if args.key?(:metric_option)
          @time_dimension = args[:time_dimension] if args.key?(:time_dimension)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Dimensions of the media item.
      class Dimensions
        include Google::Apis::Core::Hashable
      
        # Height of the media item, in pixels.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # Width of the media item, in pixels.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
      
      # A request for driving direction insights.
      class DrivingDirectionMetricsRequest
        include Google::Apis::Core::Hashable
      
        # The BCP 47 code for the language. If a language code is not provided, it
        # defaults to English.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The number of days to aggregate data for. Results returned will be available
        # data over the last number of requested days. Valid values are 7, 30, and 90.
        # Corresponds to the JSON property `numDays`
        # @return [String]
        attr_accessor :num_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @num_days = args[:num_days] if args.key?(:num_days)
        end
      end
      
      # Information about the location that this location duplicates.
      class Duplicate
        include Google::Apis::Core::Hashable
      
        # Indicates whether the user has access to the location it duplicates.
        # Corresponds to the JSON property `access`
        # @return [String]
        attr_accessor :access
      
        # The resource name of the location that this duplicates. Only populated if the
        # authenticated user has access rights to that location and that location is not
        # deleted.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # The place ID of the location that this duplicates.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @location_name = args[:location_name] if args.key?(:location_name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Input for EMAIL verification.
      class EmailInput
        include Google::Apis::Core::Hashable
      
        # Email address where the PIN should be sent to. An email address is accepted
        # only if it is one of the addresses provided by FetchVerificationOptions. If
        # the EmailVerificationData has is_user_name_editable set to true, the client
        # may specify a different user name (local-part) but must match the domain name.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
        end
      end
      
      # Display data for verifications through email.
      class EmailVerificationData
        include Google::Apis::Core::Hashable
      
        # Domain name in the email address. e.g. "gmail.com" in foo@gmail.com
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Whether client is allowed to provide a different user name.
        # Corresponds to the JSON property `isUserNameEditable`
        # @return [Boolean]
        attr_accessor :is_user_name_editable
        alias_method :is_user_name_editable?, :is_user_name_editable
      
        # User name in the email address. e.g. "foo" in foo@gmail.com
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @is_user_name_editable = args[:is_user_name_editable] if args.key?(:is_user_name_editable)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Enhanced cleaning measures implemented by the hotel during COVID-19.
      class EnhancedCleaning
        include Google::Apis::Core::Hashable
      
        # Commercial-grade disinfectant used to clean the property.
        # Corresponds to the JSON property `commercialGradeDisinfectantCleaning`
        # @return [Boolean]
        attr_accessor :commercial_grade_disinfectant_cleaning
        alias_method :commercial_grade_disinfectant_cleaning?, :commercial_grade_disinfectant_cleaning
      
        # Commercial grade disinfectant cleaning exception.
        # Corresponds to the JSON property `commercialGradeDisinfectantCleaningException`
        # @return [String]
        attr_accessor :commercial_grade_disinfectant_cleaning_exception
      
        # Enhanced cleaning of common areas.
        # Corresponds to the JSON property `commonAreasEnhancedCleaning`
        # @return [Boolean]
        attr_accessor :common_areas_enhanced_cleaning
        alias_method :common_areas_enhanced_cleaning?, :common_areas_enhanced_cleaning
      
        # Common areas enhanced cleaning exception.
        # Corresponds to the JSON property `commonAreasEnhancedCleaningException`
        # @return [String]
        attr_accessor :common_areas_enhanced_cleaning_exception
      
        # Employees trained in COVID-19 cleaning procedures.
        # Corresponds to the JSON property `employeesTrainedCleaningProcedures`
        # @return [Boolean]
        attr_accessor :employees_trained_cleaning_procedures
        alias_method :employees_trained_cleaning_procedures?, :employees_trained_cleaning_procedures
      
        # Employees trained cleaning procedures exception.
        # Corresponds to the JSON property `employeesTrainedCleaningProceduresException`
        # @return [String]
        attr_accessor :employees_trained_cleaning_procedures_exception
      
        # Employees trained in thorough hand-washing.
        # Corresponds to the JSON property `employeesTrainedThoroughHandWashing`
        # @return [Boolean]
        attr_accessor :employees_trained_thorough_hand_washing
        alias_method :employees_trained_thorough_hand_washing?, :employees_trained_thorough_hand_washing
      
        # Employees trained thorough hand washing exception.
        # Corresponds to the JSON property `employeesTrainedThoroughHandWashingException`
        # @return [String]
        attr_accessor :employees_trained_thorough_hand_washing_exception
      
        # Employees wear masks, face shields, and/or gloves.
        # Corresponds to the JSON property `employeesWearProtectiveEquipment`
        # @return [Boolean]
        attr_accessor :employees_wear_protective_equipment
        alias_method :employees_wear_protective_equipment?, :employees_wear_protective_equipment
      
        # Employees wear protective equipment exception.
        # Corresponds to the JSON property `employeesWearProtectiveEquipmentException`
        # @return [String]
        attr_accessor :employees_wear_protective_equipment_exception
      
        # Enhanced cleaning of guest rooms.
        # Corresponds to the JSON property `guestRoomsEnhancedCleaning`
        # @return [Boolean]
        attr_accessor :guest_rooms_enhanced_cleaning
        alias_method :guest_rooms_enhanced_cleaning?, :guest_rooms_enhanced_cleaning
      
        # Guest rooms enhanced cleaning exception.
        # Corresponds to the JSON property `guestRoomsEnhancedCleaningException`
        # @return [String]
        attr_accessor :guest_rooms_enhanced_cleaning_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commercial_grade_disinfectant_cleaning = args[:commercial_grade_disinfectant_cleaning] if args.key?(:commercial_grade_disinfectant_cleaning)
          @commercial_grade_disinfectant_cleaning_exception = args[:commercial_grade_disinfectant_cleaning_exception] if args.key?(:commercial_grade_disinfectant_cleaning_exception)
          @common_areas_enhanced_cleaning = args[:common_areas_enhanced_cleaning] if args.key?(:common_areas_enhanced_cleaning)
          @common_areas_enhanced_cleaning_exception = args[:common_areas_enhanced_cleaning_exception] if args.key?(:common_areas_enhanced_cleaning_exception)
          @employees_trained_cleaning_procedures = args[:employees_trained_cleaning_procedures] if args.key?(:employees_trained_cleaning_procedures)
          @employees_trained_cleaning_procedures_exception = args[:employees_trained_cleaning_procedures_exception] if args.key?(:employees_trained_cleaning_procedures_exception)
          @employees_trained_thorough_hand_washing = args[:employees_trained_thorough_hand_washing] if args.key?(:employees_trained_thorough_hand_washing)
          @employees_trained_thorough_hand_washing_exception = args[:employees_trained_thorough_hand_washing_exception] if args.key?(:employees_trained_thorough_hand_washing_exception)
          @employees_wear_protective_equipment = args[:employees_wear_protective_equipment] if args.key?(:employees_wear_protective_equipment)
          @employees_wear_protective_equipment_exception = args[:employees_wear_protective_equipment_exception] if args.key?(:employees_wear_protective_equipment_exception)
          @guest_rooms_enhanced_cleaning = args[:guest_rooms_enhanced_cleaning] if args.key?(:guest_rooms_enhanced_cleaning)
          @guest_rooms_enhanced_cleaning_exception = args[:guest_rooms_enhanced_cleaning_exception] if args.key?(:guest_rooms_enhanced_cleaning_exception)
        end
      end
      
      # Services and amenities for families and young guests.
      class Families
        include Google::Apis::Core::Hashable
      
        # Babysitting. Child care that is offered by hotel staffers or coordinated by
        # hotel staffers with local child care professionals. Can be free or for a fee.
        # Corresponds to the JSON property `babysitting`
        # @return [Boolean]
        attr_accessor :babysitting
        alias_method :babysitting?, :babysitting
      
        # Babysitting exception.
        # Corresponds to the JSON property `babysittingException`
        # @return [String]
        attr_accessor :babysitting_exception
      
        # Kids activities. Recreational options such as sports, films, crafts and games
        # designed for the enjoyment of children and offered at the hotel. May or may
        # not be supervised. May or may not be at a designated time or place. Cab be
        # free or for a fee.
        # Corresponds to the JSON property `kidsActivities`
        # @return [Boolean]
        attr_accessor :kids_activities
        alias_method :kids_activities?, :kids_activities
      
        # Kids activities exception.
        # Corresponds to the JSON property `kidsActivitiesException`
        # @return [String]
        attr_accessor :kids_activities_exception
      
        # Kids club. An organized program of group activities held at the hotel and
        # designed for the enjoyment of children. Facilitated by hotel staff (or staff
        # procured by the hotel) in an area(s) designated for the purpose of
        # entertaining children without their parents. May include games, outings, water
        # sports, team sports, arts and crafts, and films. Usually has set hours. Can be
        # free or for a fee. Also known as Kids Camp or Kids program.
        # Corresponds to the JSON property `kidsClub`
        # @return [Boolean]
        attr_accessor :kids_club
        alias_method :kids_club?, :kids_club
      
        # Kids club exception.
        # Corresponds to the JSON property `kidsClubException`
        # @return [String]
        attr_accessor :kids_club_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @babysitting = args[:babysitting] if args.key?(:babysitting)
          @babysitting_exception = args[:babysitting_exception] if args.key?(:babysitting_exception)
          @kids_activities = args[:kids_activities] if args.key?(:kids_activities)
          @kids_activities_exception = args[:kids_activities_exception] if args.key?(:kids_activities_exception)
          @kids_club = args[:kids_club] if args.key?(:kids_club)
          @kids_club_exception = args[:kids_club_exception] if args.key?(:kids_club_exception)
        end
      end
      
      # Request message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Additional data for service business verification.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::MybusinessV4::ServiceBusinessContext]
        attr_accessor :context
      
        # The BCP 47 language code representing the language that is to be used for the
        # verification process. Available options vary by language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Response message for Verifications.FetchVerificationOptions.
      class FetchVerificationOptionsResponse
        include Google::Apis::Core::Hashable
      
        # The available verification options.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MybusinessV4::VerificationOption>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Request message for Locations.FindMatchingLocations.
      class FindMatchingLocationsRequest
        include Google::Apis::Core::Hashable
      
        # The preferred language for the matching location (in BCP-47 format).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Deprecated. This field is ignored for all requests.
        # Corresponds to the JSON property `maxCacheDuration`
        # @return [String]
        attr_accessor :max_cache_duration
      
        # The number of matches to return. The default value is 3, with a maximum of 10.
        # Note that latency may increase if more are requested. There is no pagination.
        # Corresponds to the JSON property `numResults`
        # @return [Fixnum]
        attr_accessor :num_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @max_cache_duration = args[:max_cache_duration] if args.key?(:max_cache_duration)
          @num_results = args[:num_results] if args.key?(:num_results)
        end
      end
      
      # Response message for Locations.FindMatchingLocations.
      class FindMatchingLocationsResponse
        include Google::Apis::Core::Hashable
      
        # When the matching algorithm was last executed for this location.
        # Corresponds to the JSON property `matchTime`
        # @return [String]
        attr_accessor :match_time
      
        # A collection of locations that are potential matches to the specified location,
        # listed in order from best to least match. If there is an exact match, it will
        # be in the first position.
        # Corresponds to the JSON property `matchedLocations`
        # @return [Array<Google::Apis::MybusinessV4::MatchedLocation>]
        attr_accessor :matched_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_time = args[:match_time] if args.key?(:match_time)
          @matched_locations = args[:matched_locations] if args.key?(:matched_locations)
        end
      end
      
      # Follower metadata for a location.
      class FollowersMetadata
        include Google::Apis::Core::Hashable
      
        # Total number of followers for the location.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The resource name for this. accounts/`account_id`/locations/`location_id`/
        # followers/metadata
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Meals, snacks, and beverages available at the property.
      class FoodAndDrink
        include Google::Apis::Core::Hashable
      
        # Bar. A designated room, lounge or area of an on-site restaurant with seating
        # at a counter behind which a hotel staffer takes the guest's order and provides
        # the requested alcoholic drink. Can be indoors or outdoors. Also known as Pub.
        # Corresponds to the JSON property `bar`
        # @return [Boolean]
        attr_accessor :bar
        alias_method :bar?, :bar
      
        # Bar exception.
        # Corresponds to the JSON property `barException`
        # @return [String]
        attr_accessor :bar_exception
      
        # Breakfast available. The morning meal is offered to all guests. Can be free or
        # for a fee.
        # Corresponds to the JSON property `breakfastAvailable`
        # @return [Boolean]
        attr_accessor :breakfast_available
        alias_method :breakfast_available?, :breakfast_available
      
        # Breakfast available exception.
        # Corresponds to the JSON property `breakfastAvailableException`
        # @return [String]
        attr_accessor :breakfast_available_exception
      
        # Breakfast buffet. Breakfast meal service where guests serve themselves from a
        # variety of dishes/foods that are put out on a table.
        # Corresponds to the JSON property `breakfastBuffet`
        # @return [Boolean]
        attr_accessor :breakfast_buffet
        alias_method :breakfast_buffet?, :breakfast_buffet
      
        # Breakfast buffet exception.
        # Corresponds to the JSON property `breakfastBuffetException`
        # @return [String]
        attr_accessor :breakfast_buffet_exception
      
        # Buffet. A type of meal where guests serve themselves from a variety of dishes/
        # foods that are put out on a table. Includes lunch and/or dinner meals. A
        # breakfast-only buffet is not sufficient.
        # Corresponds to the JSON property `buffet`
        # @return [Boolean]
        attr_accessor :buffet
        alias_method :buffet?, :buffet
      
        # Buffet exception.
        # Corresponds to the JSON property `buffetException`
        # @return [String]
        attr_accessor :buffet_exception
      
        # Dinner buffet. Dinner meal service where guests serve themselves from a
        # variety of dishes/foods that are put out on a table.
        # Corresponds to the JSON property `dinnerBuffet`
        # @return [Boolean]
        attr_accessor :dinner_buffet
        alias_method :dinner_buffet?, :dinner_buffet
      
        # Dinner buffet exception.
        # Corresponds to the JSON property `dinnerBuffetException`
        # @return [String]
        attr_accessor :dinner_buffet_exception
      
        # Free breakfast. Breakfast is offered for free to all guests. Does not apply if
        # limited to certain room packages.
        # Corresponds to the JSON property `freeBreakfast`
        # @return [Boolean]
        attr_accessor :free_breakfast
        alias_method :free_breakfast?, :free_breakfast
      
        # Free breakfast exception.
        # Corresponds to the JSON property `freeBreakfastException`
        # @return [String]
        attr_accessor :free_breakfast_exception
      
        # Restaurant. A business onsite at the hotel that is open to the public as well
        # as guests, and offers meals and beverages to consume at tables or counters.
        # May or may not include table service. Also known as cafe, buffet, eatery. A "
        # breakfast room" where the hotel serves breakfast only to guests (not the
        # general public) does not count as a restaurant.
        # Corresponds to the JSON property `restaurant`
        # @return [Boolean]
        attr_accessor :restaurant
        alias_method :restaurant?, :restaurant
      
        # Restaurant exception.
        # Corresponds to the JSON property `restaurantException`
        # @return [String]
        attr_accessor :restaurant_exception
      
        # Restaurants count. The number of restaurants at the hotel.
        # Corresponds to the JSON property `restaurantsCount`
        # @return [Fixnum]
        attr_accessor :restaurants_count
      
        # Restaurants count exception.
        # Corresponds to the JSON property `restaurantsCountException`
        # @return [String]
        attr_accessor :restaurants_count_exception
      
        # Room service. A hotel staffer delivers meals prepared onsite to a guest's room
        # as per their request. May or may not be available during specific hours.
        # Services should be available to all guests (not based on rate/room booked/
        # reward program, etc).
        # Corresponds to the JSON property `roomService`
        # @return [Boolean]
        attr_accessor :room_service
        alias_method :room_service?, :room_service
      
        # Room service exception.
        # Corresponds to the JSON property `roomServiceException`
        # @return [String]
        attr_accessor :room_service_exception
      
        # Table service. A restaurant in which a staff member is assigned to a guest's
        # table to take their order, deliver and clear away food, and deliver the bill,
        # if applicable. Also known as sit-down restaurant.
        # Corresponds to the JSON property `tableService`
        # @return [Boolean]
        attr_accessor :table_service
        alias_method :table_service?, :table_service
      
        # Table service exception.
        # Corresponds to the JSON property `tableServiceException`
        # @return [String]
        attr_accessor :table_service_exception
      
        # 24hr room service. Room service is available 24 hours a day.
        # Corresponds to the JSON property `twentyFourHourRoomService`
        # @return [Boolean]
        attr_accessor :twenty_four_hour_room_service
        alias_method :twenty_four_hour_room_service?, :twenty_four_hour_room_service
      
        # 24hr room service exception.
        # Corresponds to the JSON property `twentyFourHourRoomServiceException`
        # @return [String]
        attr_accessor :twenty_four_hour_room_service_exception
      
        # Vending machine. A glass-fronted mechanized cabinet displaying and dispensing
        # snacks and beverages for purchase by coins, paper money and/or credit cards.
        # Corresponds to the JSON property `vendingMachine`
        # @return [Boolean]
        attr_accessor :vending_machine
        alias_method :vending_machine?, :vending_machine
      
        # Vending machine exception.
        # Corresponds to the JSON property `vendingMachineException`
        # @return [String]
        attr_accessor :vending_machine_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bar = args[:bar] if args.key?(:bar)
          @bar_exception = args[:bar_exception] if args.key?(:bar_exception)
          @breakfast_available = args[:breakfast_available] if args.key?(:breakfast_available)
          @breakfast_available_exception = args[:breakfast_available_exception] if args.key?(:breakfast_available_exception)
          @breakfast_buffet = args[:breakfast_buffet] if args.key?(:breakfast_buffet)
          @breakfast_buffet_exception = args[:breakfast_buffet_exception] if args.key?(:breakfast_buffet_exception)
          @buffet = args[:buffet] if args.key?(:buffet)
          @buffet_exception = args[:buffet_exception] if args.key?(:buffet_exception)
          @dinner_buffet = args[:dinner_buffet] if args.key?(:dinner_buffet)
          @dinner_buffet_exception = args[:dinner_buffet_exception] if args.key?(:dinner_buffet_exception)
          @free_breakfast = args[:free_breakfast] if args.key?(:free_breakfast)
          @free_breakfast_exception = args[:free_breakfast_exception] if args.key?(:free_breakfast_exception)
          @restaurant = args[:restaurant] if args.key?(:restaurant)
          @restaurant_exception = args[:restaurant_exception] if args.key?(:restaurant_exception)
          @restaurants_count = args[:restaurants_count] if args.key?(:restaurants_count)
          @restaurants_count_exception = args[:restaurants_count_exception] if args.key?(:restaurants_count_exception)
          @room_service = args[:room_service] if args.key?(:room_service)
          @room_service_exception = args[:room_service_exception] if args.key?(:room_service_exception)
          @table_service = args[:table_service] if args.key?(:table_service)
          @table_service_exception = args[:table_service_exception] if args.key?(:table_service_exception)
          @twenty_four_hour_room_service = args[:twenty_four_hour_room_service] if args.key?(:twenty_four_hour_room_service)
          @twenty_four_hour_room_service_exception = args[:twenty_four_hour_room_service_exception] if args.key?(:twenty_four_hour_room_service_exception)
          @vending_machine = args[:vending_machine] if args.key?(:vending_machine)
          @vending_machine_exception = args[:vending_machine_exception] if args.key?(:vending_machine_exception)
        end
      end
      
      # Menu of a business that serves food dishes.
      class FoodMenu
        include Google::Apis::Core::Hashable
      
        # Optional. Cuisine information for the food menu. It is highly recommended to
        # provide this field.
        # Corresponds to the JSON property `cuisines`
        # @return [Array<String>]
        attr_accessor :cuisines
      
        # Required. Language-tagged labels for the menu. E.g. "menu", "lunch special".
        # Display names should be 140 characters or less, with descriptions 1,000
        # characters or less. At least one set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :labels
      
        # Required. Sections of the menu.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::MybusinessV4::FoodMenuSection>]
        attr_accessor :sections
      
        # Optional. Source URL of menu if there is a webpage to go to.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cuisines = args[:cuisines] if args.key?(:cuisines)
          @labels = args[:labels] if args.key?(:labels)
          @sections = args[:sections] if args.key?(:sections)
          @source_url = args[:source_url] if args.key?(:source_url)
        end
      end
      
      # Item of a Section. It can be the dish itself, or can contain multiple
      # FoodMenuItemOption.
      class FoodMenuItem
        include Google::Apis::Core::Hashable
      
        # Attributes of a food item/dish.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MybusinessV4::FoodMenuItemAttributes]
        attr_accessor :attributes
      
        # Required. Language tagged labels for this menu item. Display names should be
        # 140 characters or less, with descriptions 1,000 characters or less. At least
        # one set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :labels
      
        # Optional. This is for an item that comes in multiple different options, and
        # users are required to make choices. E.g. "regular" vs. "large" pizza. When
        # options are specified, labels and attributes at item level will automatically
        # become the first option's labels and attributes. Clients only need to specify
        # other additional food options in this field.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::MybusinessV4::FoodMenuItemOption>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @labels = args[:labels] if args.key?(:labels)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Attributes of a food item/dish.
      class FoodMenuItemAttributes
        include Google::Apis::Core::Hashable
      
        # Optional. Allergens associated with the food dish. It is highly recommended to
        # provide this field.
        # Corresponds to the JSON property `allergen`
        # @return [Array<String>]
        attr_accessor :allergen
      
        # Optional. Dietary information of the food dish. It is highly recommended to
        # provide this field.
        # Corresponds to the JSON property `dietaryRestriction`
        # @return [Array<String>]
        attr_accessor :dietary_restriction
      
        # Optional. Ingredients of the food dish option.
        # Corresponds to the JSON property `ingredients`
        # @return [Array<Google::Apis::MybusinessV4::Ingredient>]
        attr_accessor :ingredients
      
        # Optional. The media keys of the media associated with the dish. Only photo
        # media is supported. When there are multiple photos associated, the first photo
        # is considered as the preferred photo.
        # Corresponds to the JSON property `mediaKeys`
        # @return [Array<String>]
        attr_accessor :media_keys
      
        # This message represents nutrition facts for a food dish.
        # Corresponds to the JSON property `nutritionFacts`
        # @return [Google::Apis::MybusinessV4::NutritionFacts]
        attr_accessor :nutrition_facts
      
        # Serving portion size of a food dish.
        # Corresponds to the JSON property `portionSize`
        # @return [Google::Apis::MybusinessV4::PortionSize]
        attr_accessor :portion_size
      
        # Optional. Methods on how the food dish option is prepared.
        # Corresponds to the JSON property `preparationMethods`
        # @return [Array<String>]
        attr_accessor :preparation_methods
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :price
      
        # Optional. Number of people can be served by this food dish option.
        # Corresponds to the JSON property `servesNumPeople`
        # @return [Fixnum]
        attr_accessor :serves_num_people
      
        # Optional. Spiciness level of the food dish.
        # Corresponds to the JSON property `spiciness`
        # @return [String]
        attr_accessor :spiciness
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allergen = args[:allergen] if args.key?(:allergen)
          @dietary_restriction = args[:dietary_restriction] if args.key?(:dietary_restriction)
          @ingredients = args[:ingredients] if args.key?(:ingredients)
          @media_keys = args[:media_keys] if args.key?(:media_keys)
          @nutrition_facts = args[:nutrition_facts] if args.key?(:nutrition_facts)
          @portion_size = args[:portion_size] if args.key?(:portion_size)
          @preparation_methods = args[:preparation_methods] if args.key?(:preparation_methods)
          @price = args[:price] if args.key?(:price)
          @serves_num_people = args[:serves_num_people] if args.key?(:serves_num_people)
          @spiciness = args[:spiciness] if args.key?(:spiciness)
        end
      end
      
      # Option of an Item. It requires an explicit user selection.
      class FoodMenuItemOption
        include Google::Apis::Core::Hashable
      
        # Attributes of a food item/dish.
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::MybusinessV4::FoodMenuItemAttributes]
        attr_accessor :attributes
      
        # Required. Language tagged labels for this menu item option. E.g.: "beef pad
        # thai", "veggie pad thai", "small pizza", "large pizza". Display names should
        # be 140 characters or less, with descriptions 1,000 characters or less. At
        # least one set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Section of a menu. It can contain multiple items/dishes.
      class FoodMenuSection
        include Google::Apis::Core::Hashable
      
        # Required. Items of the section. Each Section must have at least an item.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::MybusinessV4::FoodMenuItem>]
        attr_accessor :items
      
        # Required. Language tagged labels for this menu section. Display names should
        # be 140 characters or less, with descriptions 1,000 characters or less. At
        # least one set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Menus of a business that serve food dishes.
      class FoodMenus
        include Google::Apis::Core::Hashable
      
        # Optional. A collection of food menus.
        # Corresponds to the JSON property `menus`
        # @return [Array<Google::Apis::MybusinessV4::FoodMenu>]
        attr_accessor :menus
      
        # Required. Google identifier for this location in the form: `accounts/`
        # account_id`/locations/`location_id`/foodMenus`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @menus = args[:menus] if args.key?(:menus)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents a free-form service offered by the merchant. These are services
      # that are not exposed as part of our structure service data. The merchant
      # manually enters the names for of such services via a geomerchant surface.
      class FreeFormServiceItem
        include Google::Apis::Core::Hashable
      
        # Required. The `category_id` and `service_type_id` should match the possible
        # combinations provided in the `Category` message.
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # Label to be used when displaying the price list, section, or item.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::MybusinessV4::Label]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Request message for Accounts.GenerateAccountNumber.
      class GenerateAccountNumberRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for LodgingService.GetGoogleUpdatedLodging
      class GetGoogleUpdatedLodgingResponse
        include Google::Apis::Core::Hashable
      
        # Required. The fields in the Lodging that have been updated by Google. Repeated
        # field items are not individually specified.
        # Corresponds to the JSON property `diffMask`
        # @return [String]
        attr_accessor :diff_mask
      
        # Lodging of a location that provides accomodations.
        # Corresponds to the JSON property `lodging`
        # @return [Google::Apis::MybusinessV4::Lodging]
        attr_accessor :lodging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diff_mask = args[:diff_mask] if args.key?(:diff_mask)
          @lodging = args[:lodging] if args.key?(:lodging)
        end
      end
      
      # Represents a Location that is present on Google. This can be a location that
      # has been claimed by the user, someone else, or could be unclaimed.
      class GoogleLocation
        include Google::Apis::Core::Hashable
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        # Resource name of this GoogleLocation, in the format `googleLocations/`
        # googleLocationId``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A URL that will redirect the user to the request admin rights UI. This field
        # is only present if the location has already been claimed by any user,
        # including the current user.
        # Corresponds to the JSON property `requestAdminRightsUrl`
        # @return [String]
        attr_accessor :request_admin_rights_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @request_admin_rights_url = args[:request_admin_rights_url] if args.key?(:request_admin_rights_url)
        end
      end
      
      # Represents a location that was modified by Google.
      class GoogleUpdatedLocation
        include Google::Apis::Core::Hashable
      
        # The fields that Google updated.
        # Corresponds to the JSON property `diffMask`
        # @return [String]
        attr_accessor :diff_mask
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diff_mask = args[:diff_mask] if args.key?(:diff_mask)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Features and available amenities in the guest unit.
      class GuestUnitFeatures
        include Google::Apis::Core::Hashable
      
        # Bungalow or villa. An independent structure that is part of a hotel or resort
        # that is rented to one party for a vacation stay. The hotel or resort may be
        # completely comprised of bungalows or villas, or they may be one of several
        # guestroom options. Guests in the bungalows or villas most often have the same,
        # if not more, amenities and services offered to guests in other guestroom types.
        # Corresponds to the JSON property `bungalowOrVilla`
        # @return [Boolean]
        attr_accessor :bungalow_or_villa
        alias_method :bungalow_or_villa?, :bungalow_or_villa
      
        # Bungalow or villa exception.
        # Corresponds to the JSON property `bungalowOrVillaException`
        # @return [String]
        attr_accessor :bungalow_or_villa_exception
      
        # Connecting unit available. A guestroom type that features access to an
        # adjacent guestroom for the purpose of booking both rooms. Most often used by
        # families who need more than one room to accommodate the number of people in
        # their group.
        # Corresponds to the JSON property `connectingUnitAvailable`
        # @return [Boolean]
        attr_accessor :connecting_unit_available
        alias_method :connecting_unit_available?, :connecting_unit_available
      
        # Connecting unit available exception.
        # Corresponds to the JSON property `connectingUnitAvailableException`
        # @return [String]
        attr_accessor :connecting_unit_available_exception
      
        # Executive floor. A floor of the hotel where the guestrooms are only bookable
        # by members of the hotel's frequent guest membership program. Benefits of this
        # room class include access to a designated lounge which may or may not feature
        # free breakfast, cocktails or other perks specific to members of the program.
        # Corresponds to the JSON property `executiveFloor`
        # @return [Boolean]
        attr_accessor :executive_floor
        alias_method :executive_floor?, :executive_floor
      
        # Executive floor exception.
        # Corresponds to the JSON property `executiveFloorException`
        # @return [String]
        attr_accessor :executive_floor_exception
      
        # Max adult occupants count. The total number of adult guests allowed to stay
        # overnight in the guestroom.
        # Corresponds to the JSON property `maxAdultOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_adult_occupants_count
      
        # Max adult occupants count exception.
        # Corresponds to the JSON property `maxAdultOccupantsCountException`
        # @return [String]
        attr_accessor :max_adult_occupants_count_exception
      
        # Max child occupants count. The total number of children allowed to stay
        # overnight in the room.
        # Corresponds to the JSON property `maxChildOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_child_occupants_count
      
        # Max child occupants count exception.
        # Corresponds to the JSON property `maxChildOccupantsCountException`
        # @return [String]
        attr_accessor :max_child_occupants_count_exception
      
        # Max occupants count. The total number of guests allowed to stay overnight in
        # the guestroom.
        # Corresponds to the JSON property `maxOccupantsCount`
        # @return [Fixnum]
        attr_accessor :max_occupants_count
      
        # Max occupants count exception.
        # Corresponds to the JSON property `maxOccupantsCountException`
        # @return [String]
        attr_accessor :max_occupants_count_exception
      
        # Private home. A privately owned home (house, townhouse, apartment, cabin,
        # bungalow etc) that may or not serve as the owner's residence, but is rented
        # out in its entirety or by the room(s) to paying guest(s) for vacation stays.
        # Not for lease-based, long-term residency.
        # Corresponds to the JSON property `privateHome`
        # @return [Boolean]
        attr_accessor :private_home
        alias_method :private_home?, :private_home
      
        # Private home exception.
        # Corresponds to the JSON property `privateHomeException`
        # @return [String]
        attr_accessor :private_home_exception
      
        # Suite. A guestroom category that implies both a bedroom area and a separate
        # living area. There may or may not be full walls and doors separating the two
        # areas, but regardless, they are very distinct. Does not mean a couch or chair
        # in a bedroom.
        # Corresponds to the JSON property `suite`
        # @return [Boolean]
        attr_accessor :suite
        alias_method :suite?, :suite
      
        # Suite exception.
        # Corresponds to the JSON property `suiteException`
        # @return [String]
        attr_accessor :suite_exception
      
        # Tier. Classification of the unit based on available features/amenities. A non-
        # standard tier is only permitted if at least one other unit type falls under
        # the standard tier.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Tier exception.
        # Corresponds to the JSON property `tierException`
        # @return [String]
        attr_accessor :tier_exception
      
        # An individual room, such as kitchen, bathroom, bedroom, within a bookable
        # guest unit.
        # Corresponds to the JSON property `totalLivingAreas`
        # @return [Google::Apis::MybusinessV4::LivingArea]
        attr_accessor :total_living_areas
      
        # Views available from the guest unit itself.
        # Corresponds to the JSON property `views`
        # @return [Google::Apis::MybusinessV4::ViewsFromUnit]
        attr_accessor :views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bungalow_or_villa = args[:bungalow_or_villa] if args.key?(:bungalow_or_villa)
          @bungalow_or_villa_exception = args[:bungalow_or_villa_exception] if args.key?(:bungalow_or_villa_exception)
          @connecting_unit_available = args[:connecting_unit_available] if args.key?(:connecting_unit_available)
          @connecting_unit_available_exception = args[:connecting_unit_available_exception] if args.key?(:connecting_unit_available_exception)
          @executive_floor = args[:executive_floor] if args.key?(:executive_floor)
          @executive_floor_exception = args[:executive_floor_exception] if args.key?(:executive_floor_exception)
          @max_adult_occupants_count = args[:max_adult_occupants_count] if args.key?(:max_adult_occupants_count)
          @max_adult_occupants_count_exception = args[:max_adult_occupants_count_exception] if args.key?(:max_adult_occupants_count_exception)
          @max_child_occupants_count = args[:max_child_occupants_count] if args.key?(:max_child_occupants_count)
          @max_child_occupants_count_exception = args[:max_child_occupants_count_exception] if args.key?(:max_child_occupants_count_exception)
          @max_occupants_count = args[:max_occupants_count] if args.key?(:max_occupants_count)
          @max_occupants_count_exception = args[:max_occupants_count_exception] if args.key?(:max_occupants_count_exception)
          @private_home = args[:private_home] if args.key?(:private_home)
          @private_home_exception = args[:private_home_exception] if args.key?(:private_home_exception)
          @suite = args[:suite] if args.key?(:suite)
          @suite_exception = args[:suite_exception] if args.key?(:suite_exception)
          @tier = args[:tier] if args.key?(:tier)
          @tier_exception = args[:tier_exception] if args.key?(:tier_exception)
          @total_living_areas = args[:total_living_areas] if args.key?(:total_living_areas)
          @views = args[:views] if args.key?(:views)
        end
      end
      
      # A specific type of unit primarily defined by its features.
      class GuestUnitType
        include Google::Apis::Core::Hashable
      
        # Required. Unit or room code identifiers for a single GuestUnitType. Each code
        # must be unique within a Lodging instance.
        # Corresponds to the JSON property `codes`
        # @return [Array<String>]
        attr_accessor :codes
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::MybusinessV4::GuestUnitFeatures]
        attr_accessor :features
      
        # Required. Short, English label or name of the GuestUnitType. Target <50 chars.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @codes = args[:codes] if args.key?(:codes)
          @features = args[:features] if args.key?(:features)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Health and safety measures implemented by the hotel during COVID-19.
      class HealthAndSafety
        include Google::Apis::Core::Hashable
      
        # Enhanced cleaning measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `enhancedCleaning`
        # @return [Google::Apis::MybusinessV4::EnhancedCleaning]
        attr_accessor :enhanced_cleaning
      
        # Increased food safety measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `increasedFoodSafety`
        # @return [Google::Apis::MybusinessV4::IncreasedFoodSafety]
        attr_accessor :increased_food_safety
      
        # Minimized contact measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `minimizedContact`
        # @return [Google::Apis::MybusinessV4::MinimizedContact]
        attr_accessor :minimized_contact
      
        # Personal protection measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `personalProtection`
        # @return [Google::Apis::MybusinessV4::PersonalProtection]
        attr_accessor :personal_protection
      
        # Physical distancing measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `physicalDistancing`
        # @return [Google::Apis::MybusinessV4::PhysicalDistancing]
        attr_accessor :physical_distancing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enhanced_cleaning = args[:enhanced_cleaning] if args.key?(:enhanced_cleaning)
          @increased_food_safety = args[:increased_food_safety] if args.key?(:increased_food_safety)
          @minimized_contact = args[:minimized_contact] if args.key?(:minimized_contact)
          @personal_protection = args[:personal_protection] if args.key?(:personal_protection)
          @physical_distancing = args[:physical_distancing] if args.key?(:physical_distancing)
        end
      end
      
      # The Health provider attributes linked with this location.
      class HealthProviderAttributes
        include Google::Apis::Core::Hashable
      
        # Optional. A list of insurance networks accpected by this location.
        # Corresponds to the JSON property `insuranceNetworks`
        # @return [Array<Google::Apis::MybusinessV4::InsuranceNetwork>]
        attr_accessor :insurance_networks
      
        # Required. Google identifier for this location in the form: `accounts/`
        # account_id`/locations/`location_id`/healthProviderAttributes`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insurance_networks = args[:insurance_networks] if args.key?(:insurance_networks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Conveniences provided in guest units to facilitate an easier, more comfortable
      # stay.
      class Housekeeping
        include Google::Apis::Core::Hashable
      
        # Daily housekeeping. Guest units are cleaned by hotel staff daily during guest'
        # s stay.
        # Corresponds to the JSON property `dailyHousekeeping`
        # @return [Boolean]
        attr_accessor :daily_housekeeping
        alias_method :daily_housekeeping?, :daily_housekeeping
      
        # Daily housekeeping exception.
        # Corresponds to the JSON property `dailyHousekeepingException`
        # @return [String]
        attr_accessor :daily_housekeeping_exception
      
        # Housekeeping available. Guest units are cleaned by hotel staff during guest's
        # stay. Schedule may vary from daily, weekly, or specific days of the week.
        # Corresponds to the JSON property `housekeepingAvailable`
        # @return [Boolean]
        attr_accessor :housekeeping_available
        alias_method :housekeeping_available?, :housekeeping_available
      
        # Housekeeping available exception.
        # Corresponds to the JSON property `housekeepingAvailableException`
        # @return [String]
        attr_accessor :housekeeping_available_exception
      
        # Turndown service. Hotel staff enters guest units to prepare the bed for sleep
        # use. May or may not include some light housekeeping. May or may not include an
        # evening snack or candy. Also known as evening service.
        # Corresponds to the JSON property `turndownService`
        # @return [Boolean]
        attr_accessor :turndown_service
        alias_method :turndown_service?, :turndown_service
      
        # Turndown service exception.
        # Corresponds to the JSON property `turndownServiceException`
        # @return [String]
        attr_accessor :turndown_service_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_housekeeping = args[:daily_housekeeping] if args.key?(:daily_housekeeping)
          @daily_housekeeping_exception = args[:daily_housekeeping_exception] if args.key?(:daily_housekeeping_exception)
          @housekeeping_available = args[:housekeeping_available] if args.key?(:housekeeping_available)
          @housekeeping_available_exception = args[:housekeeping_available_exception] if args.key?(:housekeeping_available_exception)
          @turndown_service = args[:turndown_service] if args.key?(:turndown_service)
          @turndown_service_exception = args[:turndown_service_exception] if args.key?(:turndown_service_exception)
        end
      end
      
      # Increased food safety measures implemented by the hotel during COVID-19.
      class IncreasedFoodSafety
        include Google::Apis::Core::Hashable
      
        # Additional sanitation in dining areas.
        # Corresponds to the JSON property `diningAreasAdditionalSanitation`
        # @return [Boolean]
        attr_accessor :dining_areas_additional_sanitation
        alias_method :dining_areas_additional_sanitation?, :dining_areas_additional_sanitation
      
        # Dining areas additional sanitation exception.
        # Corresponds to the JSON property `diningAreasAdditionalSanitationException`
        # @return [String]
        attr_accessor :dining_areas_additional_sanitation_exception
      
        # Disposable flatware.
        # Corresponds to the JSON property `disposableFlatware`
        # @return [Boolean]
        attr_accessor :disposable_flatware
        alias_method :disposable_flatware?, :disposable_flatware
      
        # Disposable flatware exception.
        # Corresponds to the JSON property `disposableFlatwareException`
        # @return [String]
        attr_accessor :disposable_flatware_exception
      
        # Additional safety measures during food prep and serving.
        # Corresponds to the JSON property `foodPreparationAndServingAdditionalSafety`
        # @return [Boolean]
        attr_accessor :food_preparation_and_serving_additional_safety
        alias_method :food_preparation_and_serving_additional_safety?, :food_preparation_and_serving_additional_safety
      
        # Food preparation and serving additional safety exception.
        # Corresponds to the JSON property `foodPreparationAndServingAdditionalSafetyException`
        # @return [String]
        attr_accessor :food_preparation_and_serving_additional_safety_exception
      
        # Individually-packaged meals.
        # Corresponds to the JSON property `individualPackagedMeals`
        # @return [Boolean]
        attr_accessor :individual_packaged_meals
        alias_method :individual_packaged_meals?, :individual_packaged_meals
      
        # Individual packaged meals exception.
        # Corresponds to the JSON property `individualPackagedMealsException`
        # @return [String]
        attr_accessor :individual_packaged_meals_exception
      
        # Single-use menus.
        # Corresponds to the JSON property `singleUseFoodMenus`
        # @return [Boolean]
        attr_accessor :single_use_food_menus
        alias_method :single_use_food_menus?, :single_use_food_menus
      
        # Single use food menus exception.
        # Corresponds to the JSON property `singleUseFoodMenusException`
        # @return [String]
        attr_accessor :single_use_food_menus_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dining_areas_additional_sanitation = args[:dining_areas_additional_sanitation] if args.key?(:dining_areas_additional_sanitation)
          @dining_areas_additional_sanitation_exception = args[:dining_areas_additional_sanitation_exception] if args.key?(:dining_areas_additional_sanitation_exception)
          @disposable_flatware = args[:disposable_flatware] if args.key?(:disposable_flatware)
          @disposable_flatware_exception = args[:disposable_flatware_exception] if args.key?(:disposable_flatware_exception)
          @food_preparation_and_serving_additional_safety = args[:food_preparation_and_serving_additional_safety] if args.key?(:food_preparation_and_serving_additional_safety)
          @food_preparation_and_serving_additional_safety_exception = args[:food_preparation_and_serving_additional_safety_exception] if args.key?(:food_preparation_and_serving_additional_safety_exception)
          @individual_packaged_meals = args[:individual_packaged_meals] if args.key?(:individual_packaged_meals)
          @individual_packaged_meals_exception = args[:individual_packaged_meals_exception] if args.key?(:individual_packaged_meals_exception)
          @single_use_food_menus = args[:single_use_food_menus] if args.key?(:single_use_food_menus)
          @single_use_food_menus_exception = args[:single_use_food_menus_exception] if args.key?(:single_use_food_menus_exception)
        end
      end
      
      # This message denotes an ingredient information of a food dish.
      class Ingredient
        include Google::Apis::Core::Hashable
      
        # Required. Labels to describe ingredient. Display names should be 140
        # characters or less, with descriptions 1,000 characters or less. At least one
        # set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # A single insurance network. Next id: 5
      class InsuranceNetwork
        include Google::Apis::Core::Hashable
      
        # Required. The id of this insurance network generated by Google.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Output only. A map of network display names in requested languages where the
        # language is the key and localized display name is the value. The display name
        # in English is set by default.
        # Corresponds to the JSON property `networkNames`
        # @return [Hash<String,String>]
        attr_accessor :network_names
      
        # Output only. A map of payer display names in requested languages where the
        # language is the key and localized display name is the value. The display name
        # in English is set by default.
        # Corresponds to the JSON property `payerNames`
        # @return [Hash<String,String>]
        attr_accessor :payer_names
      
        # Output only. The state of this insurance network.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_id = args[:network_id] if args.key?(:network_id)
          @network_names = args[:network_names] if args.key?(:network_names)
          @payer_names = args[:payer_names] if args.key?(:payer_names)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Output only. Represents a pending invitation.
      class Invitation
        include Google::Apis::Core::Hashable
      
        # The resource name for the invitation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The invited role on the account.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # An account is a container for your business's locations. If you are the only
        # user who manages locations for your business, you can use your personal Google
        # Account. To share management of locations with multiple users, [create a
        # business account] (https://support.google.com/business/answer/6085339?
        # ref_topic=6085325).
        # Corresponds to the JSON property `targetAccount`
        # @return [Google::Apis::MybusinessV4::Account]
        attr_accessor :target_account
      
        # Represents a target location for a pending invitation.
        # Corresponds to the JSON property `targetLocation`
        # @return [Google::Apis::MybusinessV4::TargetLocation]
        attr_accessor :target_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @target_account = args[:target_account] if args.key?(:target_account)
          @target_location = args[:target_location] if args.key?(:target_location)
        end
      end
      
      # A single list item. Each variation of an item in the price list should have
      # its own Item with its own price data.
      class Item
        include Google::Apis::Core::Hashable
      
        # Required. ID for the item. Price list, section, and item IDs cannot be
        # duplicated within this Location.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Required. Language-tagged labels for the item. We recommend that item names be
        # 140 characters or less, and descriptions 250 characters or less. At least one
        # set of labels is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @labels = args[:labels] if args.key?(:labels)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # Label to be used when displaying the price list, section, or item.
      class Label
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the price list, section, or item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name for the price list, section, or item.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The BCP-47 language code that these strings apply for. Only one set
        # of labels may be set per language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Languages spoken by at least one staff member.
      class LanguagesSpoken
        include Google::Apis::Core::Hashable
      
        # Arabic. At least one staff member speaks Arabic.
        # Corresponds to the JSON property `arabicSpoken`
        # @return [Boolean]
        attr_accessor :arabic_spoken
        alias_method :arabic_spoken?, :arabic_spoken
      
        # Arabic exception.
        # Corresponds to the JSON property `arabicSpokenException`
        # @return [String]
        attr_accessor :arabic_spoken_exception
      
        # Cantonese. At least one staff member speaks Cantonese.
        # Corresponds to the JSON property `cantoneseSpoken`
        # @return [Boolean]
        attr_accessor :cantonese_spoken
        alias_method :cantonese_spoken?, :cantonese_spoken
      
        # Cantonese exception.
        # Corresponds to the JSON property `cantoneseSpokenException`
        # @return [String]
        attr_accessor :cantonese_spoken_exception
      
        # Dutch. At least one staff member speaks Dutch.
        # Corresponds to the JSON property `dutchSpoken`
        # @return [Boolean]
        attr_accessor :dutch_spoken
        alias_method :dutch_spoken?, :dutch_spoken
      
        # Dutch exception.
        # Corresponds to the JSON property `dutchSpokenException`
        # @return [String]
        attr_accessor :dutch_spoken_exception
      
        # English. At least one staff member speaks English.
        # Corresponds to the JSON property `englishSpoken`
        # @return [Boolean]
        attr_accessor :english_spoken
        alias_method :english_spoken?, :english_spoken
      
        # English exception.
        # Corresponds to the JSON property `englishSpokenException`
        # @return [String]
        attr_accessor :english_spoken_exception
      
        # Filipino. At least one staff member speaks Filipino.
        # Corresponds to the JSON property `filipinoSpoken`
        # @return [Boolean]
        attr_accessor :filipino_spoken
        alias_method :filipino_spoken?, :filipino_spoken
      
        # Filipino exception.
        # Corresponds to the JSON property `filipinoSpokenException`
        # @return [String]
        attr_accessor :filipino_spoken_exception
      
        # French. At least one staff member speaks French.
        # Corresponds to the JSON property `frenchSpoken`
        # @return [Boolean]
        attr_accessor :french_spoken
        alias_method :french_spoken?, :french_spoken
      
        # French exception.
        # Corresponds to the JSON property `frenchSpokenException`
        # @return [String]
        attr_accessor :french_spoken_exception
      
        # German. At least one staff member speaks German.
        # Corresponds to the JSON property `germanSpoken`
        # @return [Boolean]
        attr_accessor :german_spoken
        alias_method :german_spoken?, :german_spoken
      
        # German exception.
        # Corresponds to the JSON property `germanSpokenException`
        # @return [String]
        attr_accessor :german_spoken_exception
      
        # Hindi. At least one staff member speaks Hindi.
        # Corresponds to the JSON property `hindiSpoken`
        # @return [Boolean]
        attr_accessor :hindi_spoken
        alias_method :hindi_spoken?, :hindi_spoken
      
        # Hindi exception.
        # Corresponds to the JSON property `hindiSpokenException`
        # @return [String]
        attr_accessor :hindi_spoken_exception
      
        # Indonesian. At least one staff member speaks Indonesian.
        # Corresponds to the JSON property `indonesianSpoken`
        # @return [Boolean]
        attr_accessor :indonesian_spoken
        alias_method :indonesian_spoken?, :indonesian_spoken
      
        # Indonesian exception.
        # Corresponds to the JSON property `indonesianSpokenException`
        # @return [String]
        attr_accessor :indonesian_spoken_exception
      
        # Italian. At least one staff member speaks Italian.
        # Corresponds to the JSON property `italianSpoken`
        # @return [Boolean]
        attr_accessor :italian_spoken
        alias_method :italian_spoken?, :italian_spoken
      
        # Italian exception.
        # Corresponds to the JSON property `italianSpokenException`
        # @return [String]
        attr_accessor :italian_spoken_exception
      
        # Japanese. At least one staff member speaks Japanese.
        # Corresponds to the JSON property `japaneseSpoken`
        # @return [Boolean]
        attr_accessor :japanese_spoken
        alias_method :japanese_spoken?, :japanese_spoken
      
        # Japanese exception.
        # Corresponds to the JSON property `japaneseSpokenException`
        # @return [String]
        attr_accessor :japanese_spoken_exception
      
        # Korean. At least one staff member speaks Korean.
        # Corresponds to the JSON property `koreanSpoken`
        # @return [Boolean]
        attr_accessor :korean_spoken
        alias_method :korean_spoken?, :korean_spoken
      
        # Korean exception.
        # Corresponds to the JSON property `koreanSpokenException`
        # @return [String]
        attr_accessor :korean_spoken_exception
      
        # Mandarin. At least one staff member speaks Mandarin.
        # Corresponds to the JSON property `mandarinSpoken`
        # @return [Boolean]
        attr_accessor :mandarin_spoken
        alias_method :mandarin_spoken?, :mandarin_spoken
      
        # Mandarin exception.
        # Corresponds to the JSON property `mandarinSpokenException`
        # @return [String]
        attr_accessor :mandarin_spoken_exception
      
        # Portuguese. At least one staff member speaks Portuguese.
        # Corresponds to the JSON property `portugueseSpoken`
        # @return [Boolean]
        attr_accessor :portuguese_spoken
        alias_method :portuguese_spoken?, :portuguese_spoken
      
        # Portuguese exception.
        # Corresponds to the JSON property `portugueseSpokenException`
        # @return [String]
        attr_accessor :portuguese_spoken_exception
      
        # Russian. At least one staff member speaks Russian.
        # Corresponds to the JSON property `russianSpoken`
        # @return [Boolean]
        attr_accessor :russian_spoken
        alias_method :russian_spoken?, :russian_spoken
      
        # Russian exception.
        # Corresponds to the JSON property `russianSpokenException`
        # @return [String]
        attr_accessor :russian_spoken_exception
      
        # Spanish. At least one staff member speaks Spanish.
        # Corresponds to the JSON property `spanishSpoken`
        # @return [Boolean]
        attr_accessor :spanish_spoken
        alias_method :spanish_spoken?, :spanish_spoken
      
        # Spanish exception.
        # Corresponds to the JSON property `spanishSpokenException`
        # @return [String]
        attr_accessor :spanish_spoken_exception
      
        # Vietnamese. At least one staff member speaks Vietnamese.
        # Corresponds to the JSON property `vietnameseSpoken`
        # @return [Boolean]
        attr_accessor :vietnamese_spoken
        alias_method :vietnamese_spoken?, :vietnamese_spoken
      
        # Vietnamese exception.
        # Corresponds to the JSON property `vietnameseSpokenException`
        # @return [String]
        attr_accessor :vietnamese_spoken_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arabic_spoken = args[:arabic_spoken] if args.key?(:arabic_spoken)
          @arabic_spoken_exception = args[:arabic_spoken_exception] if args.key?(:arabic_spoken_exception)
          @cantonese_spoken = args[:cantonese_spoken] if args.key?(:cantonese_spoken)
          @cantonese_spoken_exception = args[:cantonese_spoken_exception] if args.key?(:cantonese_spoken_exception)
          @dutch_spoken = args[:dutch_spoken] if args.key?(:dutch_spoken)
          @dutch_spoken_exception = args[:dutch_spoken_exception] if args.key?(:dutch_spoken_exception)
          @english_spoken = args[:english_spoken] if args.key?(:english_spoken)
          @english_spoken_exception = args[:english_spoken_exception] if args.key?(:english_spoken_exception)
          @filipino_spoken = args[:filipino_spoken] if args.key?(:filipino_spoken)
          @filipino_spoken_exception = args[:filipino_spoken_exception] if args.key?(:filipino_spoken_exception)
          @french_spoken = args[:french_spoken] if args.key?(:french_spoken)
          @french_spoken_exception = args[:french_spoken_exception] if args.key?(:french_spoken_exception)
          @german_spoken = args[:german_spoken] if args.key?(:german_spoken)
          @german_spoken_exception = args[:german_spoken_exception] if args.key?(:german_spoken_exception)
          @hindi_spoken = args[:hindi_spoken] if args.key?(:hindi_spoken)
          @hindi_spoken_exception = args[:hindi_spoken_exception] if args.key?(:hindi_spoken_exception)
          @indonesian_spoken = args[:indonesian_spoken] if args.key?(:indonesian_spoken)
          @indonesian_spoken_exception = args[:indonesian_spoken_exception] if args.key?(:indonesian_spoken_exception)
          @italian_spoken = args[:italian_spoken] if args.key?(:italian_spoken)
          @italian_spoken_exception = args[:italian_spoken_exception] if args.key?(:italian_spoken_exception)
          @japanese_spoken = args[:japanese_spoken] if args.key?(:japanese_spoken)
          @japanese_spoken_exception = args[:japanese_spoken_exception] if args.key?(:japanese_spoken_exception)
          @korean_spoken = args[:korean_spoken] if args.key?(:korean_spoken)
          @korean_spoken_exception = args[:korean_spoken_exception] if args.key?(:korean_spoken_exception)
          @mandarin_spoken = args[:mandarin_spoken] if args.key?(:mandarin_spoken)
          @mandarin_spoken_exception = args[:mandarin_spoken_exception] if args.key?(:mandarin_spoken_exception)
          @portuguese_spoken = args[:portuguese_spoken] if args.key?(:portuguese_spoken)
          @portuguese_spoken_exception = args[:portuguese_spoken_exception] if args.key?(:portuguese_spoken_exception)
          @russian_spoken = args[:russian_spoken] if args.key?(:russian_spoken)
          @russian_spoken_exception = args[:russian_spoken_exception] if args.key?(:russian_spoken_exception)
          @spanish_spoken = args[:spanish_spoken] if args.key?(:spanish_spoken)
          @spanish_spoken_exception = args[:spanish_spoken_exception] if args.key?(:spanish_spoken_exception)
          @vietnamese_spoken = args[:vietnamese_spoken] if args.key?(:vietnamese_spoken)
          @vietnamese_spoken_exception = args[:vietnamese_spoken_exception] if args.key?(:vietnamese_spoken_exception)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the WGS84 standard. Values must be
      # within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # Response message for AccessControl.ListAccountAdmins.
      class ListAccountAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV4::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # Response message for Accounts.ListAccounts.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of accounts to which the user has access. The personal account of
        # the user doing the query will always be the first item of the result, unless
        # it is filtered out.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::MybusinessV4::Account>]
        attr_accessor :accounts
      
        # If the number of accounts exceeds the requested page size, this field is
        # populated with a token to fetch the next page of accounts on a subsequent call
        # to `accounts.list`. If there are no more accounts, this field is not present
        # in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for QuestionsAndAnswers.ListAnswers
      class ListAnswersResponse
        include Google::Apis::Core::Hashable
      
        # The requested answers.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::MybusinessV4::Answer>]
        attr_accessor :answers
      
        # If the number of answers exceeds the requested max page size, this field is
        # populated with a token to fetch the next page of answers on a subsequent call.
        # If there are no more answers, this field is not present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of answers posted for this question across all pages.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for Locations.ListAttributeMetadata.
      class ListAttributeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # A collection of attribute metadata for the available attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV4::AttributeMetadata>]
        attr_accessor :attributes
      
        # If the number of attributes exceeded the requested page size, this field will
        # be populated with a token to fetch the next page of attributes on a subsequent
        # call to `attributes.list`. If there are no more attributes, this field will
        # not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListBusinessCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # The categories. Categories are BASIC view. They don't contain any ServiceType
        # information.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::MybusinessV4::Category>]
        attr_accessor :categories
      
        # If the number of categories exceeded the requested page size, this field will
        # be populated with a token to fetch the next page of categories on a subsequent
        # call to `ListBusinessCategories`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of categories for the request parameters.
        # Corresponds to the JSON property `totalCategoryCount`
        # @return [Fixnum]
        attr_accessor :total_category_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_category_count = args[:total_category_count] if args.key?(:total_category_count)
        end
      end
      
      # Response message for Media.ListCustomerMediaItems.
      class ListCustomerMediaItemsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of media items.
        # Corresponds to the JSON property `mediaItems`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media_items
      
        # If there are more media items than the requested page size, then this field is
        # populated with a token to fetch the next page of media items on a subsequent
        # call to ListCustomerMediaItems.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of media items for this location, irrespective of pagination.
        # This number is approximate, particularly when there are multiple pages of
        # results.
        # Corresponds to the JSON property `totalMediaItemCount`
        # @return [Fixnum]
        attr_accessor :total_media_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_items = args[:media_items] if args.key?(:media_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_media_item_count = args[:total_media_item_count] if args.key?(:total_media_item_count)
        end
      end
      
      # Response message for InsuranceNetworkService.ListInsuranceNetworks
      class ListInsuranceNetworksResponse
        include Google::Apis::Core::Hashable
      
        # A list of insurance networks that are supported by Google.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::MybusinessV4::InsuranceNetwork>]
        attr_accessor :networks
      
        # If there are more insurance networks than the requested page size, then this
        # field is populated with a token to fetch the next page of insurance networks
        # on a subsequent call to ListInsuranceNetworks.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @networks = args[:networks] if args.key?(:networks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AccessControl.ListInvitations.
      class ListInvitationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of location invitations that are pending for the account. The
        # number of invitations listed here cannot exceed 1000.
        # Corresponds to the JSON property `invitations`
        # @return [Array<Google::Apis::MybusinessV4::Invitation>]
        attr_accessor :invitations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invitations = args[:invitations] if args.key?(:invitations)
        end
      end
      
      # Response message for ListLocalPosts
      class ListLocalPostsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of local posts.
        # Corresponds to the JSON property `localPosts`
        # @return [Array<Google::Apis::MybusinessV4::LocalPost>]
        attr_accessor :local_posts
      
        # If there are more local posts than the requested page size, then this field is
        # populated with a token to fetch the next page of local posts on a subsequent
        # call to `ListLocalPosts`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_posts = args[:local_posts] if args.key?(:local_posts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for AccessControl.ListLocationAdmins.
      class ListLocationAdminsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of Admin instances.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::MybusinessV4::Admin>]
        attr_accessor :admins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
        end
      end
      
      # Response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The locations.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MybusinessV4::Location>]
        attr_accessor :locations
      
        # If the number of locations exceeded the requested page size, this field is
        # populated with a token to fetch the next page of locations on a subsequent
        # call to `ListLocations`. If there are no more locations, this field is not
        # present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The approximate number of Locations in the list irrespective of pagination.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for Media.ListMediaItems.
      class ListMediaItemsResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of media items.
        # Corresponds to the JSON property `mediaItems`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media_items
      
        # If there are more media items than the requested page size, then this field is
        # populated with a token to fetch the next page of media items on a subsequent
        # call to ListMediaItems.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of media items for this location, irrespective of pagination.
        # Corresponds to the JSON property `totalMediaItemCount`
        # @return [Fixnum]
        attr_accessor :total_media_item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_items = args[:media_items] if args.key?(:media_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_media_item_count = args[:total_media_item_count] if args.key?(:total_media_item_count)
        end
      end
      
      # Response message for QuestionsAndAnswers.ListQuestions
      class ListQuestionsResponse
        include Google::Apis::Core::Hashable
      
        # If the number of questions exceeds the requested max page size, this field is
        # populated with a token to fetch the next page of questions on a subsequent
        # call. If there are no more questions, this field is not present in the
        # response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested questions,
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::MybusinessV4::Question>]
        attr_accessor :questions
      
        # The total number of questions posted for this location across all pages.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @questions = args[:questions] if args.key?(:questions)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for GoogleLocations.ListRecommendedGoogleLocations. It also
      # contains some locations that have been claimed by other Business Profile users
      # since the last time they were recommended to this Business Profile account.
      class ListRecommendedGoogleLocationsResponse
        include Google::Apis::Core::Hashable
      
        # The locations recommended to a Business Profile account. Each of these
        # represents a GoogleLocation that is present on Maps. The locations are sorted
        # in decreasing order of relevance to the Business Profile account.
        # Corresponds to the JSON property `googleLocations`
        # @return [Array<Google::Apis::MybusinessV4::GoogleLocation>]
        attr_accessor :google_locations
      
        # During pagination, if there are more locations available to be fetched in the
        # next page, this field is populated with a token to fetch the next page of
        # locations in a subsequent call. If there are no more locations to be fetched,
        # this field is not present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of recommended locations for this Business Profile account,
        # irrespective of pagination.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_locations = args[:google_locations] if args.key?(:google_locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for Reviews.ListReviews.
      class ListReviewsResponse
        include Google::Apis::Core::Hashable
      
        # The average star rating of all reviews for this location on a scale of 1 to 5,
        # where 5 is the highest rating.
        # Corresponds to the JSON property `averageRating`
        # @return [Float]
        attr_accessor :average_rating
      
        # If the number of reviews exceeded the requested page size, this field is
        # populated with a token to fetch the next page of reviews on a subsequent call
        # to ListReviews. If there are no more reviews, this field is not present in the
        # response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reviews.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::MybusinessV4::Review>]
        attr_accessor :reviews
      
        # The total number of reviews for this location.
        # Corresponds to the JSON property `totalReviewCount`
        # @return [Fixnum]
        attr_accessor :total_review_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_rating = args[:average_rating] if args.key?(:average_rating)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reviews = args[:reviews] if args.key?(:reviews)
          @total_review_count = args[:total_review_count] if args.key?(:total_review_count)
        end
      end
      
      # Response message for Verifications.ListVerifications.
      class ListVerificationsResponse
        include Google::Apis::Core::Hashable
      
        # If the number of verifications exceeded the requested page size, this field
        # will be populated with a token to fetch the next page of verification on a
        # subsequent call. If there are no more attributes, this field will not be
        # present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of the verifications.
        # Corresponds to the JSON property `verifications`
        # @return [Array<Google::Apis::MybusinessV4::Verification>]
        attr_accessor :verifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @verifications = args[:verifications] if args.key?(:verifications)
        end
      end
      
      # An individual room, such as kitchen, bathroom, bedroom, within a bookable
      # guest unit.
      class LivingArea
        include Google::Apis::Core::Hashable
      
        # Accessibility features of the living area.
        # Corresponds to the JSON property `accessibility`
        # @return [Google::Apis::MybusinessV4::LivingAreaAccessibility]
        attr_accessor :accessibility
      
        # Information about eating features in the living area.
        # Corresponds to the JSON property `eating`
        # @return [Google::Apis::MybusinessV4::LivingAreaEating]
        attr_accessor :eating
      
        # Features in the living area.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::MybusinessV4::LivingAreaFeatures]
        attr_accessor :features
      
        # Information about the layout of the living area.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::MybusinessV4::LivingAreaLayout]
        attr_accessor :layout
      
        # Information about sleeping features in the living area.
        # Corresponds to the JSON property `sleeping`
        # @return [Google::Apis::MybusinessV4::LivingAreaSleeping]
        attr_accessor :sleeping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility = args[:accessibility] if args.key?(:accessibility)
          @eating = args[:eating] if args.key?(:eating)
          @features = args[:features] if args.key?(:features)
          @layout = args[:layout] if args.key?(:layout)
          @sleeping = args[:sleeping] if args.key?(:sleeping)
        end
      end
      
      # Accessibility features of the living area.
      class LivingAreaAccessibility
        include Google::Apis::Core::Hashable
      
        # ADA compliant unit. A guestroom designed to accommodate the physical
        # challenges of a guest with mobility and/or auditory and/or visual issues, as
        # determined by legislative policy. Usually features enlarged doorways, roll-in
        # showers with seats, bathroom grab bars, and communication equipment for the
        # hearing and sight challenged.
        # Corresponds to the JSON property `adaCompliantUnit`
        # @return [Boolean]
        attr_accessor :ada_compliant_unit
        alias_method :ada_compliant_unit?, :ada_compliant_unit
      
        # ADA compliant unit exception.
        # Corresponds to the JSON property `adaCompliantUnitException`
        # @return [String]
        attr_accessor :ada_compliant_unit_exception
      
        # Hearing-accessible doorbell. A visual indicator(s) of a knock or ring at the
        # door.
        # Corresponds to the JSON property `hearingAccessibleDoorbell`
        # @return [Boolean]
        attr_accessor :hearing_accessible_doorbell
        alias_method :hearing_accessible_doorbell?, :hearing_accessible_doorbell
      
        # Hearing-accessible doorbell exception.
        # Corresponds to the JSON property `hearingAccessibleDoorbellException`
        # @return [String]
        attr_accessor :hearing_accessible_doorbell_exception
      
        # Hearing-accessible fire alarm. A device that gives warning of a fire through
        # flashing lights.
        # Corresponds to the JSON property `hearingAccessibleFireAlarm`
        # @return [Boolean]
        attr_accessor :hearing_accessible_fire_alarm
        alias_method :hearing_accessible_fire_alarm?, :hearing_accessible_fire_alarm
      
        # Hearing-accessible fire alarm exception.
        # Corresponds to the JSON property `hearingAccessibleFireAlarmException`
        # @return [String]
        attr_accessor :hearing_accessible_fire_alarm_exception
      
        # Hearing-accessible unit. A guestroom designed to accommodate the physical
        # challenges of a guest with auditory issues.
        # Corresponds to the JSON property `hearingAccessibleUnit`
        # @return [Boolean]
        attr_accessor :hearing_accessible_unit
        alias_method :hearing_accessible_unit?, :hearing_accessible_unit
      
        # Hearing-accessible unit exception.
        # Corresponds to the JSON property `hearingAccessibleUnitException`
        # @return [String]
        attr_accessor :hearing_accessible_unit_exception
      
        # Mobility-accessible bathtub. A bathtub that accomodates the physically
        # challenged with additional railings or hand grips, a transfer seat or lift,
        # and/or a door to enable walking into the tub.
        # Corresponds to the JSON property `mobilityAccessibleBathtub`
        # @return [Boolean]
        attr_accessor :mobility_accessible_bathtub
        alias_method :mobility_accessible_bathtub?, :mobility_accessible_bathtub
      
        # Mobility-accessible bathtub exception.
        # Corresponds to the JSON property `mobilityAccessibleBathtubException`
        # @return [String]
        attr_accessor :mobility_accessible_bathtub_exception
      
        # Mobility-accessible shower. A shower with an enlarged door or access point to
        # accommodate a wheelchair or a waterproof seat for the physically challenged.
        # Corresponds to the JSON property `mobilityAccessibleShower`
        # @return [Boolean]
        attr_accessor :mobility_accessible_shower
        alias_method :mobility_accessible_shower?, :mobility_accessible_shower
      
        # Mobility-accessible shower exception.
        # Corresponds to the JSON property `mobilityAccessibleShowerException`
        # @return [String]
        attr_accessor :mobility_accessible_shower_exception
      
        # Mobility-accessible toilet. A toilet with a higher seat, grab bars, and/or a
        # larger area around it to accommodate the physically challenged.
        # Corresponds to the JSON property `mobilityAccessibleToilet`
        # @return [Boolean]
        attr_accessor :mobility_accessible_toilet
        alias_method :mobility_accessible_toilet?, :mobility_accessible_toilet
      
        # Mobility-accessible toilet exception.
        # Corresponds to the JSON property `mobilityAccessibleToiletException`
        # @return [String]
        attr_accessor :mobility_accessible_toilet_exception
      
        # Mobility-accessible unit. A guestroom designed to accommodate the physical
        # challenges of a guest with mobility and/or auditory and/or visual issues.
        # Usually features enlarged doorways, roll-in showers with seats, bathroom grab
        # bars, and communication equipment for the hearing and sight challenged.
        # Corresponds to the JSON property `mobilityAccessibleUnit`
        # @return [Boolean]
        attr_accessor :mobility_accessible_unit
        alias_method :mobility_accessible_unit?, :mobility_accessible_unit
      
        # Mobility-accessible unit exception.
        # Corresponds to the JSON property `mobilityAccessibleUnitException`
        # @return [String]
        attr_accessor :mobility_accessible_unit_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ada_compliant_unit = args[:ada_compliant_unit] if args.key?(:ada_compliant_unit)
          @ada_compliant_unit_exception = args[:ada_compliant_unit_exception] if args.key?(:ada_compliant_unit_exception)
          @hearing_accessible_doorbell = args[:hearing_accessible_doorbell] if args.key?(:hearing_accessible_doorbell)
          @hearing_accessible_doorbell_exception = args[:hearing_accessible_doorbell_exception] if args.key?(:hearing_accessible_doorbell_exception)
          @hearing_accessible_fire_alarm = args[:hearing_accessible_fire_alarm] if args.key?(:hearing_accessible_fire_alarm)
          @hearing_accessible_fire_alarm_exception = args[:hearing_accessible_fire_alarm_exception] if args.key?(:hearing_accessible_fire_alarm_exception)
          @hearing_accessible_unit = args[:hearing_accessible_unit] if args.key?(:hearing_accessible_unit)
          @hearing_accessible_unit_exception = args[:hearing_accessible_unit_exception] if args.key?(:hearing_accessible_unit_exception)
          @mobility_accessible_bathtub = args[:mobility_accessible_bathtub] if args.key?(:mobility_accessible_bathtub)
          @mobility_accessible_bathtub_exception = args[:mobility_accessible_bathtub_exception] if args.key?(:mobility_accessible_bathtub_exception)
          @mobility_accessible_shower = args[:mobility_accessible_shower] if args.key?(:mobility_accessible_shower)
          @mobility_accessible_shower_exception = args[:mobility_accessible_shower_exception] if args.key?(:mobility_accessible_shower_exception)
          @mobility_accessible_toilet = args[:mobility_accessible_toilet] if args.key?(:mobility_accessible_toilet)
          @mobility_accessible_toilet_exception = args[:mobility_accessible_toilet_exception] if args.key?(:mobility_accessible_toilet_exception)
          @mobility_accessible_unit = args[:mobility_accessible_unit] if args.key?(:mobility_accessible_unit)
          @mobility_accessible_unit_exception = args[:mobility_accessible_unit_exception] if args.key?(:mobility_accessible_unit_exception)
        end
      end
      
      # Information about eating features in the living area.
      class LivingAreaEating
        include Google::Apis::Core::Hashable
      
        # Coffee maker. An electric appliance that brews coffee by heating and forcing
        # water through ground coffee.
        # Corresponds to the JSON property `coffeeMaker`
        # @return [Boolean]
        attr_accessor :coffee_maker
        alias_method :coffee_maker?, :coffee_maker
      
        # Coffee maker exception.
        # Corresponds to the JSON property `coffeeMakerException`
        # @return [String]
        attr_accessor :coffee_maker_exception
      
        # Cookware. Kitchen pots, pans and utensils used in connection with the
        # preparation of food.
        # Corresponds to the JSON property `cookware`
        # @return [Boolean]
        attr_accessor :cookware
        alias_method :cookware?, :cookware
      
        # Cookware exception.
        # Corresponds to the JSON property `cookwareException`
        # @return [String]
        attr_accessor :cookware_exception
      
        # Dishwasher. A counter-height electrical cabinet containing racks for dirty
        # dishware, cookware and cutlery, and a dispenser for soap built into the pull-
        # down door. The cabinet is attached to the plumbing system to facilitate the
        # automatic cleaning of its contents.
        # Corresponds to the JSON property `dishwasher`
        # @return [Boolean]
        attr_accessor :dishwasher
        alias_method :dishwasher?, :dishwasher
      
        # Dishwasher exception.
        # Corresponds to the JSON property `dishwasherException`
        # @return [String]
        attr_accessor :dishwasher_exception
      
        # Indoor grill. Metal grates built into an indoor cooktop on which food is
        # cooked over an open flame or electric heat source.
        # Corresponds to the JSON property `indoorGrill`
        # @return [Boolean]
        attr_accessor :indoor_grill
        alias_method :indoor_grill?, :indoor_grill
      
        # Indoor grill exception.
        # Corresponds to the JSON property `indoorGrillException`
        # @return [String]
        attr_accessor :indoor_grill_exception
      
        # Kettle. A covered container with a handle and a spout used for boiling water.
        # Corresponds to the JSON property `kettle`
        # @return [Boolean]
        attr_accessor :kettle
        alias_method :kettle?, :kettle
      
        # Kettle exception.
        # Corresponds to the JSON property `kettleException`
        # @return [String]
        attr_accessor :kettle_exception
      
        # Kitchen available. An area of the guestroom designated for the preparation and
        # storage of food via the presence of a refrigerator, cook top, oven and sink,
        # as well as cutlery, dishes and cookware. Usually includes small appliances
        # such a coffee maker and a microwave. May or may not include an automatic
        # dishwasher.
        # Corresponds to the JSON property `kitchenAvailable`
        # @return [Boolean]
        attr_accessor :kitchen_available
        alias_method :kitchen_available?, :kitchen_available
      
        # Kitchen available exception.
        # Corresponds to the JSON property `kitchenAvailableException`
        # @return [String]
        attr_accessor :kitchen_available_exception
      
        # Microwave. An electric oven that quickly cooks and heats food by microwave
        # energy. Smaller than a standing or wall mounted oven. Usually placed on a
        # kitchen counter, a shelf or tabletop or mounted above a cooktop.
        # Corresponds to the JSON property `microwave`
        # @return [Boolean]
        attr_accessor :microwave
        alias_method :microwave?, :microwave
      
        # Microwave exception.
        # Corresponds to the JSON property `microwaveException`
        # @return [String]
        attr_accessor :microwave_exception
      
        # Minibar. A small refrigerated cabinet in the guestroom containing bottles/cans
        # of soft drinks, mini bottles of alcohol, and snacks. The items are most
        # commonly available for a fee.
        # Corresponds to the JSON property `minibar`
        # @return [Boolean]
        attr_accessor :minibar
        alias_method :minibar?, :minibar
      
        # Minibar exception.
        # Corresponds to the JSON property `minibarException`
        # @return [String]
        attr_accessor :minibar_exception
      
        # Outdoor grill. Metal grates on which food is cooked over an open flame or
        # electric heat source. Part of an outdoor apparatus that supports the grates.
        # Also known as barbecue grill or barbecue.
        # Corresponds to the JSON property `outdoorGrill`
        # @return [Boolean]
        attr_accessor :outdoor_grill
        alias_method :outdoor_grill?, :outdoor_grill
      
        # Outdoor grill exception.
        # Corresponds to the JSON property `outdoorGrillException`
        # @return [String]
        attr_accessor :outdoor_grill_exception
      
        # Oven. A temperature controlled, heated metal cabinet powered by gas or
        # electricity in which food is placed for the purpose of cooking or reheating.
        # Corresponds to the JSON property `oven`
        # @return [Boolean]
        attr_accessor :oven
        alias_method :oven?, :oven
      
        # Oven exception.
        # Corresponds to the JSON property `ovenException`
        # @return [String]
        attr_accessor :oven_exception
      
        # Refrigerator. A large, climate-controlled electrical cabinet with vertical
        # doors. Built for the purpose of chilling and storing perishable foods.
        # Corresponds to the JSON property `refrigerator`
        # @return [Boolean]
        attr_accessor :refrigerator
        alias_method :refrigerator?, :refrigerator
      
        # Refrigerator exception.
        # Corresponds to the JSON property `refrigeratorException`
        # @return [String]
        attr_accessor :refrigerator_exception
      
        # Sink. A basin with a faucet attached to a water source and used for the
        # purpose of washing and rinsing.
        # Corresponds to the JSON property `sink`
        # @return [Boolean]
        attr_accessor :sink
        alias_method :sink?, :sink
      
        # Sink exception.
        # Corresponds to the JSON property `sinkException`
        # @return [String]
        attr_accessor :sink_exception
      
        # Snackbar. A small cabinet in the guestroom containing snacks. The items are
        # most commonly available for a fee.
        # Corresponds to the JSON property `snackbar`
        # @return [Boolean]
        attr_accessor :snackbar
        alias_method :snackbar?, :snackbar
      
        # Snackbar exception.
        # Corresponds to the JSON property `snackbarException`
        # @return [String]
        attr_accessor :snackbar_exception
      
        # Stove. A kitchen appliance powered by gas or electricity for the purpose of
        # creating a flame or hot surface on which pots of food can be cooked. Also
        # known as cooktop or hob.
        # Corresponds to the JSON property `stove`
        # @return [Boolean]
        attr_accessor :stove
        alias_method :stove?, :stove
      
        # Stove exception.
        # Corresponds to the JSON property `stoveException`
        # @return [String]
        attr_accessor :stove_exception
      
        # Tea station. A small area with the supplies needed to heat water and make tea.
        # Corresponds to the JSON property `teaStation`
        # @return [Boolean]
        attr_accessor :tea_station
        alias_method :tea_station?, :tea_station
      
        # Tea station exception.
        # Corresponds to the JSON property `teaStationException`
        # @return [String]
        attr_accessor :tea_station_exception
      
        # Toaster. A small, temperature controlled electric appliance with rectangular
        # slots at the top that are lined with heated coils for the purpose of browning
        # slices of bread products.
        # Corresponds to the JSON property `toaster`
        # @return [Boolean]
        attr_accessor :toaster
        alias_method :toaster?, :toaster
      
        # Toaster exception.
        # Corresponds to the JSON property `toasterException`
        # @return [String]
        attr_accessor :toaster_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coffee_maker = args[:coffee_maker] if args.key?(:coffee_maker)
          @coffee_maker_exception = args[:coffee_maker_exception] if args.key?(:coffee_maker_exception)
          @cookware = args[:cookware] if args.key?(:cookware)
          @cookware_exception = args[:cookware_exception] if args.key?(:cookware_exception)
          @dishwasher = args[:dishwasher] if args.key?(:dishwasher)
          @dishwasher_exception = args[:dishwasher_exception] if args.key?(:dishwasher_exception)
          @indoor_grill = args[:indoor_grill] if args.key?(:indoor_grill)
          @indoor_grill_exception = args[:indoor_grill_exception] if args.key?(:indoor_grill_exception)
          @kettle = args[:kettle] if args.key?(:kettle)
          @kettle_exception = args[:kettle_exception] if args.key?(:kettle_exception)
          @kitchen_available = args[:kitchen_available] if args.key?(:kitchen_available)
          @kitchen_available_exception = args[:kitchen_available_exception] if args.key?(:kitchen_available_exception)
          @microwave = args[:microwave] if args.key?(:microwave)
          @microwave_exception = args[:microwave_exception] if args.key?(:microwave_exception)
          @minibar = args[:minibar] if args.key?(:minibar)
          @minibar_exception = args[:minibar_exception] if args.key?(:minibar_exception)
          @outdoor_grill = args[:outdoor_grill] if args.key?(:outdoor_grill)
          @outdoor_grill_exception = args[:outdoor_grill_exception] if args.key?(:outdoor_grill_exception)
          @oven = args[:oven] if args.key?(:oven)
          @oven_exception = args[:oven_exception] if args.key?(:oven_exception)
          @refrigerator = args[:refrigerator] if args.key?(:refrigerator)
          @refrigerator_exception = args[:refrigerator_exception] if args.key?(:refrigerator_exception)
          @sink = args[:sink] if args.key?(:sink)
          @sink_exception = args[:sink_exception] if args.key?(:sink_exception)
          @snackbar = args[:snackbar] if args.key?(:snackbar)
          @snackbar_exception = args[:snackbar_exception] if args.key?(:snackbar_exception)
          @stove = args[:stove] if args.key?(:stove)
          @stove_exception = args[:stove_exception] if args.key?(:stove_exception)
          @tea_station = args[:tea_station] if args.key?(:tea_station)
          @tea_station_exception = args[:tea_station_exception] if args.key?(:tea_station_exception)
          @toaster = args[:toaster] if args.key?(:toaster)
          @toaster_exception = args[:toaster_exception] if args.key?(:toaster_exception)
        end
      end
      
      # Features in the living area.
      class LivingAreaFeatures
        include Google::Apis::Core::Hashable
      
        # Air conditioning. An electrical machine used to cool the temperature of the
        # guestroom.
        # Corresponds to the JSON property `airConditioning`
        # @return [Boolean]
        attr_accessor :air_conditioning
        alias_method :air_conditioning?, :air_conditioning
      
        # Air conditioning exception.
        # Corresponds to the JSON property `airConditioningException`
        # @return [String]
        attr_accessor :air_conditioning_exception
      
        # Bathtub. A fixed plumbing feature set on the floor and consisting of a large
        # container that accommodates the body of an adult for the purpose of seated
        # bathing. Includes knobs or fixtures to control the temperature of the water, a
        # faucet through which the water flows, and a drain that can be closed for
        # filling and opened for draining.
        # Corresponds to the JSON property `bathtub`
        # @return [Boolean]
        attr_accessor :bathtub
        alias_method :bathtub?, :bathtub
      
        # Bathtub exception.
        # Corresponds to the JSON property `bathtubException`
        # @return [String]
        attr_accessor :bathtub_exception
      
        # Bidet. A plumbing fixture attached to a toilet or a low, fixed sink designed
        # for the purpose of washing after toilet use.
        # Corresponds to the JSON property `bidet`
        # @return [Boolean]
        attr_accessor :bidet
        alias_method :bidet?, :bidet
      
        # Bidet exception.
        # Corresponds to the JSON property `bidetException`
        # @return [String]
        attr_accessor :bidet_exception
      
        # Dryer. An electrical machine designed to dry clothing.
        # Corresponds to the JSON property `dryer`
        # @return [Boolean]
        attr_accessor :dryer
        alias_method :dryer?, :dryer
      
        # Dryer exception.
        # Corresponds to the JSON property `dryerException`
        # @return [String]
        attr_accessor :dryer_exception
      
        # Electronic room key. A card coded by the check-in computer that is read by the
        # lock on the hotel guestroom door to allow for entry.
        # Corresponds to the JSON property `electronicRoomKey`
        # @return [Boolean]
        attr_accessor :electronic_room_key
        alias_method :electronic_room_key?, :electronic_room_key
      
        # Electronic room key exception.
        # Corresponds to the JSON property `electronicRoomKeyException`
        # @return [String]
        attr_accessor :electronic_room_key_exception
      
        # Fireplace. A framed opening (aka hearth) at the base of a chimney in which
        # logs or an electrical fire feature are burned to provide a relaxing ambiance
        # or to heat the room. Often made of bricks or stone.
        # Corresponds to the JSON property `fireplace`
        # @return [Boolean]
        attr_accessor :fireplace
        alias_method :fireplace?, :fireplace
      
        # Fireplace exception.
        # Corresponds to the JSON property `fireplaceException`
        # @return [String]
        attr_accessor :fireplace_exception
      
        # Hairdryer. A handheld electric appliance that blows temperature-controlled air
        # for the purpose of drying wet hair. Can be mounted to a bathroom wall or a
        # freestanding device stored in the guestroom's bathroom or closet.
        # Corresponds to the JSON property `hairdryer`
        # @return [Boolean]
        attr_accessor :hairdryer
        alias_method :hairdryer?, :hairdryer
      
        # Hairdryer exception.
        # Corresponds to the JSON property `hairdryerException`
        # @return [String]
        attr_accessor :hairdryer_exception
      
        # Heating. An electrical machine used to warm the temperature of the guestroom.
        # Corresponds to the JSON property `heating`
        # @return [Boolean]
        attr_accessor :heating
        alias_method :heating?, :heating
      
        # Heating exception.
        # Corresponds to the JSON property `heatingException`
        # @return [String]
        attr_accessor :heating_exception
      
        # In-unit safe. A strong fireproof cabinet with a programmable lock, used for
        # the protected storage of valuables in a guestroom. Often built into a closet.
        # Corresponds to the JSON property `inunitSafe`
        # @return [Boolean]
        attr_accessor :inunit_safe
        alias_method :inunit_safe?, :inunit_safe
      
        # In-unit safe exception.
        # Corresponds to the JSON property `inunitSafeException`
        # @return [String]
        attr_accessor :inunit_safe_exception
      
        # In-unit Wifi available. Guests can wirelessly connect to the Internet in the
        # guestroom. Can be free or for a fee.
        # Corresponds to the JSON property `inunitWifiAvailable`
        # @return [Boolean]
        attr_accessor :inunit_wifi_available
        alias_method :inunit_wifi_available?, :inunit_wifi_available
      
        # In-unit Wifi available exception.
        # Corresponds to the JSON property `inunitWifiAvailableException`
        # @return [String]
        attr_accessor :inunit_wifi_available_exception
      
        # Ironing equipment. A device, usually with a flat metal base, that is heated to
        # smooth, finish, or press clothes and a flat, padded, cloth-covered surface on
        # which the clothes are worked.
        # Corresponds to the JSON property `ironingEquipment`
        # @return [Boolean]
        attr_accessor :ironing_equipment
        alias_method :ironing_equipment?, :ironing_equipment
      
        # Ironing equipment exception.
        # Corresponds to the JSON property `ironingEquipmentException`
        # @return [String]
        attr_accessor :ironing_equipment_exception
      
        # Pay per view movies. Televisions with channels that offer films that can be
        # viewed for a fee, and have an interface to allow the viewer to accept the
        # terms and approve payment.
        # Corresponds to the JSON property `payPerViewMovies`
        # @return [Boolean]
        attr_accessor :pay_per_view_movies
        alias_method :pay_per_view_movies?, :pay_per_view_movies
      
        # Pay per view movies exception.
        # Corresponds to the JSON property `payPerViewMoviesException`
        # @return [String]
        attr_accessor :pay_per_view_movies_exception
      
        # Private bathroom. A bathroom designated for the express use of the guests
        # staying in a specific guestroom.
        # Corresponds to the JSON property `privateBathroom`
        # @return [Boolean]
        attr_accessor :private_bathroom
        alias_method :private_bathroom?, :private_bathroom
      
        # Private bathroom exception.
        # Corresponds to the JSON property `privateBathroomException`
        # @return [String]
        attr_accessor :private_bathroom_exception
      
        # Shower. A fixed plumbing fixture for standing bathing that features a tall
        # spray spout or faucet through which water flows, a knob or knobs that control
        # the water's temperature, and a drain in the floor.
        # Corresponds to the JSON property `shower`
        # @return [Boolean]
        attr_accessor :shower
        alias_method :shower?, :shower
      
        # Shower exception.
        # Corresponds to the JSON property `showerException`
        # @return [String]
        attr_accessor :shower_exception
      
        # Toilet. A fixed bathroom feature connected to a sewer or septic system and
        # consisting of a water-flushed bowl with a seat, as well as a device that
        # elicites the water-flushing action. Used for the process and disposal of human
        # waste.
        # Corresponds to the JSON property `toilet`
        # @return [Boolean]
        attr_accessor :toilet
        alias_method :toilet?, :toilet
      
        # Toilet exception.
        # Corresponds to the JSON property `toiletException`
        # @return [String]
        attr_accessor :toilet_exception
      
        # TV. A television is available in the guestroom.
        # Corresponds to the JSON property `tv`
        # @return [Boolean]
        attr_accessor :tv
        alias_method :tv?, :tv
      
        # TV casting. A television equipped with a device through which the video
        # entertainment accessed on a personal computer, phone or tablet can be
        # wirelessly delivered to and viewed on the guestroom's television.
        # Corresponds to the JSON property `tvCasting`
        # @return [Boolean]
        attr_accessor :tv_casting
        alias_method :tv_casting?, :tv_casting
      
        # TV exception.
        # Corresponds to the JSON property `tvCastingException`
        # @return [String]
        attr_accessor :tv_casting_exception
      
        # TV exception.
        # Corresponds to the JSON property `tvException`
        # @return [String]
        attr_accessor :tv_exception
      
        # TV streaming. Televisions that embed a range of web-based apps to allow for
        # watching media from those apps.
        # Corresponds to the JSON property `tvStreaming`
        # @return [Boolean]
        attr_accessor :tv_streaming
        alias_method :tv_streaming?, :tv_streaming
      
        # TV streaming exception.
        # Corresponds to the JSON property `tvStreamingException`
        # @return [String]
        attr_accessor :tv_streaming_exception
      
        # Universal power adapters. A power supply for electronic devices which plugs
        # into a wall for the purpose of converting AC to a single DC voltage. Also know
        # as AC adapter or charger.
        # Corresponds to the JSON property `universalPowerAdapters`
        # @return [Boolean]
        attr_accessor :universal_power_adapters
        alias_method :universal_power_adapters?, :universal_power_adapters
      
        # Universal power adapters exception.
        # Corresponds to the JSON property `universalPowerAdaptersException`
        # @return [String]
        attr_accessor :universal_power_adapters_exception
      
        # Washer. An electrical machine connected to a running water source designed to
        # launder clothing.
        # Corresponds to the JSON property `washer`
        # @return [Boolean]
        attr_accessor :washer
        alias_method :washer?, :washer
      
        # Washer exception.
        # Corresponds to the JSON property `washerException`
        # @return [String]
        attr_accessor :washer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @air_conditioning = args[:air_conditioning] if args.key?(:air_conditioning)
          @air_conditioning_exception = args[:air_conditioning_exception] if args.key?(:air_conditioning_exception)
          @bathtub = args[:bathtub] if args.key?(:bathtub)
          @bathtub_exception = args[:bathtub_exception] if args.key?(:bathtub_exception)
          @bidet = args[:bidet] if args.key?(:bidet)
          @bidet_exception = args[:bidet_exception] if args.key?(:bidet_exception)
          @dryer = args[:dryer] if args.key?(:dryer)
          @dryer_exception = args[:dryer_exception] if args.key?(:dryer_exception)
          @electronic_room_key = args[:electronic_room_key] if args.key?(:electronic_room_key)
          @electronic_room_key_exception = args[:electronic_room_key_exception] if args.key?(:electronic_room_key_exception)
          @fireplace = args[:fireplace] if args.key?(:fireplace)
          @fireplace_exception = args[:fireplace_exception] if args.key?(:fireplace_exception)
          @hairdryer = args[:hairdryer] if args.key?(:hairdryer)
          @hairdryer_exception = args[:hairdryer_exception] if args.key?(:hairdryer_exception)
          @heating = args[:heating] if args.key?(:heating)
          @heating_exception = args[:heating_exception] if args.key?(:heating_exception)
          @inunit_safe = args[:inunit_safe] if args.key?(:inunit_safe)
          @inunit_safe_exception = args[:inunit_safe_exception] if args.key?(:inunit_safe_exception)
          @inunit_wifi_available = args[:inunit_wifi_available] if args.key?(:inunit_wifi_available)
          @inunit_wifi_available_exception = args[:inunit_wifi_available_exception] if args.key?(:inunit_wifi_available_exception)
          @ironing_equipment = args[:ironing_equipment] if args.key?(:ironing_equipment)
          @ironing_equipment_exception = args[:ironing_equipment_exception] if args.key?(:ironing_equipment_exception)
          @pay_per_view_movies = args[:pay_per_view_movies] if args.key?(:pay_per_view_movies)
          @pay_per_view_movies_exception = args[:pay_per_view_movies_exception] if args.key?(:pay_per_view_movies_exception)
          @private_bathroom = args[:private_bathroom] if args.key?(:private_bathroom)
          @private_bathroom_exception = args[:private_bathroom_exception] if args.key?(:private_bathroom_exception)
          @shower = args[:shower] if args.key?(:shower)
          @shower_exception = args[:shower_exception] if args.key?(:shower_exception)
          @toilet = args[:toilet] if args.key?(:toilet)
          @toilet_exception = args[:toilet_exception] if args.key?(:toilet_exception)
          @tv = args[:tv] if args.key?(:tv)
          @tv_casting = args[:tv_casting] if args.key?(:tv_casting)
          @tv_casting_exception = args[:tv_casting_exception] if args.key?(:tv_casting_exception)
          @tv_exception = args[:tv_exception] if args.key?(:tv_exception)
          @tv_streaming = args[:tv_streaming] if args.key?(:tv_streaming)
          @tv_streaming_exception = args[:tv_streaming_exception] if args.key?(:tv_streaming_exception)
          @universal_power_adapters = args[:universal_power_adapters] if args.key?(:universal_power_adapters)
          @universal_power_adapters_exception = args[:universal_power_adapters_exception] if args.key?(:universal_power_adapters_exception)
          @washer = args[:washer] if args.key?(:washer)
          @washer_exception = args[:washer_exception] if args.key?(:washer_exception)
        end
      end
      
      # Information about the layout of the living area.
      class LivingAreaLayout
        include Google::Apis::Core::Hashable
      
        # Balcony. An outdoor platform attached to a building and surrounded by a short
        # wall, fence or other safety railing. The balcony is accessed through a door in
        # a guestroom or suite and is for use by the guest staying in that room. May or
        # may not include seating or outdoor furniture. Is not located on the ground
        # floor. Also lanai.
        # Corresponds to the JSON property `balcony`
        # @return [Boolean]
        attr_accessor :balcony
        alias_method :balcony?, :balcony
      
        # Balcony exception.
        # Corresponds to the JSON property `balconyException`
        # @return [String]
        attr_accessor :balcony_exception
      
        # Living area sq meters. The measurement in meters of the area of a guestroom's
        # living space.
        # Corresponds to the JSON property `livingAreaSqMeters`
        # @return [Float]
        attr_accessor :living_area_sq_meters
      
        # Living area sq meters exception.
        # Corresponds to the JSON property `livingAreaSqMetersException`
        # @return [String]
        attr_accessor :living_area_sq_meters_exception
      
        # Loft. A three-walled upper area accessed by stairs or a ladder that overlooks
        # the lower area of a room.
        # Corresponds to the JSON property `loft`
        # @return [Boolean]
        attr_accessor :loft
        alias_method :loft?, :loft
      
        # Loft exception.
        # Corresponds to the JSON property `loftException`
        # @return [String]
        attr_accessor :loft_exception
      
        # Non smoking. A guestroom in which the smoking of cigarettes, cigars and pipes
        # is prohibited.
        # Corresponds to the JSON property `nonSmoking`
        # @return [Boolean]
        attr_accessor :non_smoking
        alias_method :non_smoking?, :non_smoking
      
        # Non smoking exception.
        # Corresponds to the JSON property `nonSmokingException`
        # @return [String]
        attr_accessor :non_smoking_exception
      
        # Patio. A paved, outdoor area with seating attached to and accessed through a
        # ground-floor guestroom for use by the occupants of the guestroom.
        # Corresponds to the JSON property `patio`
        # @return [Boolean]
        attr_accessor :patio
        alias_method :patio?, :patio
      
        # Patio exception.
        # Corresponds to the JSON property `patioException`
        # @return [String]
        attr_accessor :patio_exception
      
        # Stairs. There are steps leading from one level or story to another in the unit.
        # Corresponds to the JSON property `stairs`
        # @return [Boolean]
        attr_accessor :stairs
        alias_method :stairs?, :stairs
      
        # Stairs exception.
        # Corresponds to the JSON property `stairsException`
        # @return [String]
        attr_accessor :stairs_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balcony = args[:balcony] if args.key?(:balcony)
          @balcony_exception = args[:balcony_exception] if args.key?(:balcony_exception)
          @living_area_sq_meters = args[:living_area_sq_meters] if args.key?(:living_area_sq_meters)
          @living_area_sq_meters_exception = args[:living_area_sq_meters_exception] if args.key?(:living_area_sq_meters_exception)
          @loft = args[:loft] if args.key?(:loft)
          @loft_exception = args[:loft_exception] if args.key?(:loft_exception)
          @non_smoking = args[:non_smoking] if args.key?(:non_smoking)
          @non_smoking_exception = args[:non_smoking_exception] if args.key?(:non_smoking_exception)
          @patio = args[:patio] if args.key?(:patio)
          @patio_exception = args[:patio_exception] if args.key?(:patio_exception)
          @stairs = args[:stairs] if args.key?(:stairs)
          @stairs_exception = args[:stairs_exception] if args.key?(:stairs_exception)
        end
      end
      
      # Information about sleeping features in the living area.
      class LivingAreaSleeping
        include Google::Apis::Core::Hashable
      
        # Beds count. The number of permanent beds present in a guestroom. Does not
        # include rollaway beds, cribs or sofabeds.
        # Corresponds to the JSON property `bedsCount`
        # @return [Fixnum]
        attr_accessor :beds_count
      
        # Beds count exception.
        # Corresponds to the JSON property `bedsCountException`
        # @return [String]
        attr_accessor :beds_count_exception
      
        # Bunk beds count. The number of furniture pieces in which one framed mattress
        # is fixed directly above another by means of a physical frame. This allows one
        # person(s) to sleep in the bottom bunk and one person(s) to sleep in the top
        # bunk. Also known as double decker bed.
        # Corresponds to the JSON property `bunkBedsCount`
        # @return [Fixnum]
        attr_accessor :bunk_beds_count
      
        # Bunk beds count exception.
        # Corresponds to the JSON property `bunkBedsCountException`
        # @return [String]
        attr_accessor :bunk_beds_count_exception
      
        # Cribs count. The number of small beds for an infant or toddler that the
        # guestroom can obtain. The bed is surrounded by a high railing to prevent the
        # child from falling or climbing out of the bed
        # Corresponds to the JSON property `cribsCount`
        # @return [Fixnum]
        attr_accessor :cribs_count
      
        # Cribs count exception.
        # Corresponds to the JSON property `cribsCountException`
        # @return [String]
        attr_accessor :cribs_count_exception
      
        # Double beds count. The number of medium beds measuring 53"W x 75"L (135cm x
        # 191cm). Also known as full size bed.
        # Corresponds to the JSON property `doubleBedsCount`
        # @return [Fixnum]
        attr_accessor :double_beds_count
      
        # Double beds count exception.
        # Corresponds to the JSON property `doubleBedsCountException`
        # @return [String]
        attr_accessor :double_beds_count_exception
      
        # Feather pillows. The option for guests to obtain bed pillows that are stuffed
        # with the feathers and down of ducks or geese.
        # Corresponds to the JSON property `featherPillows`
        # @return [Boolean]
        attr_accessor :feather_pillows
        alias_method :feather_pillows?, :feather_pillows
      
        # Feather pillows exception.
        # Corresponds to the JSON property `featherPillowsException`
        # @return [String]
        attr_accessor :feather_pillows_exception
      
        # Hypoallergenic bedding. Bedding such as linens, pillows, mattress covers and/
        # or mattresses that are made of materials known to be resistant to allergens
        # such as mold, dust and dander.
        # Corresponds to the JSON property `hypoallergenicBedding`
        # @return [Boolean]
        attr_accessor :hypoallergenic_bedding
        alias_method :hypoallergenic_bedding?, :hypoallergenic_bedding
      
        # Hypoallergenic bedding exception.
        # Corresponds to the JSON property `hypoallergenicBeddingException`
        # @return [String]
        attr_accessor :hypoallergenic_bedding_exception
      
        # King beds count. The number of large beds measuring 76"W x 80"L (193cm x 102cm)
        # . Most often meant to accompany two people. Includes California king and super
        # king.
        # Corresponds to the JSON property `kingBedsCount`
        # @return [Fixnum]
        attr_accessor :king_beds_count
      
        # King beds count exception.
        # Corresponds to the JSON property `kingBedsCountException`
        # @return [String]
        attr_accessor :king_beds_count_exception
      
        # Memory foam pillows. The option for guests to obtain bed pillows that are
        # stuffed with a man-made foam that responds to body heat by conforming to the
        # body closely, and then recovers its shape when the pillow cools down.
        # Corresponds to the JSON property `memoryFoamPillows`
        # @return [Boolean]
        attr_accessor :memory_foam_pillows
        alias_method :memory_foam_pillows?, :memory_foam_pillows
      
        # Memory foam pillows exception.
        # Corresponds to the JSON property `memoryFoamPillowsException`
        # @return [String]
        attr_accessor :memory_foam_pillows_exception
      
        # Other beds count. The number of beds that are not standard mattress and
        # boxspring setups such as Japanese tatami mats, trundle beds, air mattresses
        # and cots.
        # Corresponds to the JSON property `otherBedsCount`
        # @return [Fixnum]
        attr_accessor :other_beds_count
      
        # Other beds count exception.
        # Corresponds to the JSON property `otherBedsCountException`
        # @return [String]
        attr_accessor :other_beds_count_exception
      
        # Queen beds count. The number of medium-large beds measuring 60"W x 80"L (152cm
        # x 102cm).
        # Corresponds to the JSON property `queenBedsCount`
        # @return [Fixnum]
        attr_accessor :queen_beds_count
      
        # Queen beds count exception.
        # Corresponds to the JSON property `queenBedsCountException`
        # @return [String]
        attr_accessor :queen_beds_count_exception
      
        # Roll away beds count. The number of mattresses on wheeled frames that can be
        # folded in half and rolled away for easy storage that the guestroom can obtain
        # upon request.
        # Corresponds to the JSON property `rollAwayBedsCount`
        # @return [Fixnum]
        attr_accessor :roll_away_beds_count
      
        # Roll away beds count exception.
        # Corresponds to the JSON property `rollAwayBedsCountException`
        # @return [String]
        attr_accessor :roll_away_beds_count_exception
      
        # Single or twin count beds. The number of smaller beds measuring 38"W x 75"L (
        # 97cm x 191cm) that can accommodate one adult.
        # Corresponds to the JSON property `singleOrTwinBedsCount`
        # @return [Fixnum]
        attr_accessor :single_or_twin_beds_count
      
        # Single or twin beds count exception.
        # Corresponds to the JSON property `singleOrTwinBedsCountException`
        # @return [String]
        attr_accessor :single_or_twin_beds_count_exception
      
        # Sofa beds count. The number of specially designed sofas that can be made to
        # serve as a bed by lowering its hinged upholstered back to horizontal position
        # or by pulling out a concealed mattress.
        # Corresponds to the JSON property `sofaBedsCount`
        # @return [Fixnum]
        attr_accessor :sofa_beds_count
      
        # Sofa beds count exception.
        # Corresponds to the JSON property `sofaBedsCountException`
        # @return [String]
        attr_accessor :sofa_beds_count_exception
      
        # Synthetic pillows. The option for guests to obtain bed pillows stuffed with
        # polyester material crafted to reproduce the feel of a pillow stuffed with down
        # and feathers.
        # Corresponds to the JSON property `syntheticPillows`
        # @return [Boolean]
        attr_accessor :synthetic_pillows
        alias_method :synthetic_pillows?, :synthetic_pillows
      
        # Synthetic pillows exception.
        # Corresponds to the JSON property `syntheticPillowsException`
        # @return [String]
        attr_accessor :synthetic_pillows_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beds_count = args[:beds_count] if args.key?(:beds_count)
          @beds_count_exception = args[:beds_count_exception] if args.key?(:beds_count_exception)
          @bunk_beds_count = args[:bunk_beds_count] if args.key?(:bunk_beds_count)
          @bunk_beds_count_exception = args[:bunk_beds_count_exception] if args.key?(:bunk_beds_count_exception)
          @cribs_count = args[:cribs_count] if args.key?(:cribs_count)
          @cribs_count_exception = args[:cribs_count_exception] if args.key?(:cribs_count_exception)
          @double_beds_count = args[:double_beds_count] if args.key?(:double_beds_count)
          @double_beds_count_exception = args[:double_beds_count_exception] if args.key?(:double_beds_count_exception)
          @feather_pillows = args[:feather_pillows] if args.key?(:feather_pillows)
          @feather_pillows_exception = args[:feather_pillows_exception] if args.key?(:feather_pillows_exception)
          @hypoallergenic_bedding = args[:hypoallergenic_bedding] if args.key?(:hypoallergenic_bedding)
          @hypoallergenic_bedding_exception = args[:hypoallergenic_bedding_exception] if args.key?(:hypoallergenic_bedding_exception)
          @king_beds_count = args[:king_beds_count] if args.key?(:king_beds_count)
          @king_beds_count_exception = args[:king_beds_count_exception] if args.key?(:king_beds_count_exception)
          @memory_foam_pillows = args[:memory_foam_pillows] if args.key?(:memory_foam_pillows)
          @memory_foam_pillows_exception = args[:memory_foam_pillows_exception] if args.key?(:memory_foam_pillows_exception)
          @other_beds_count = args[:other_beds_count] if args.key?(:other_beds_count)
          @other_beds_count_exception = args[:other_beds_count_exception] if args.key?(:other_beds_count_exception)
          @queen_beds_count = args[:queen_beds_count] if args.key?(:queen_beds_count)
          @queen_beds_count_exception = args[:queen_beds_count_exception] if args.key?(:queen_beds_count_exception)
          @roll_away_beds_count = args[:roll_away_beds_count] if args.key?(:roll_away_beds_count)
          @roll_away_beds_count_exception = args[:roll_away_beds_count_exception] if args.key?(:roll_away_beds_count_exception)
          @single_or_twin_beds_count = args[:single_or_twin_beds_count] if args.key?(:single_or_twin_beds_count)
          @single_or_twin_beds_count_exception = args[:single_or_twin_beds_count_exception] if args.key?(:single_or_twin_beds_count_exception)
          @sofa_beds_count = args[:sofa_beds_count] if args.key?(:sofa_beds_count)
          @sofa_beds_count_exception = args[:sofa_beds_count_exception] if args.key?(:sofa_beds_count_exception)
          @synthetic_pillows = args[:synthetic_pillows] if args.key?(:synthetic_pillows)
          @synthetic_pillows_exception = args[:synthetic_pillows_exception] if args.key?(:synthetic_pillows_exception)
        end
      end
      
      # Represents a [local post](https://support.google.com/business/answer/7662907)
      # for a location.
      class LocalPost
        include Google::Apis::Core::Hashable
      
        # The type of alert the post is created for. This field is only applicable for
        # posts of topic_type Alert, and behaves as a sub-type of Alerts.
        # Corresponds to the JSON property `alertType`
        # @return [String]
        attr_accessor :alert_type
      
        # An action that is performed when the user clicks through the post
        # Corresponds to the JSON property `callToAction`
        # @return [Google::Apis::MybusinessV4::CallToAction]
        attr_accessor :call_to_action
      
        # Output only. Time of the creation of the post.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # All the information pertaining to an event featured in a local post.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::MybusinessV4::LocalPostEvent]
        attr_accessor :event
      
        # The language of the local post.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The media associated with the post. source_url is the only supported data
        # field for a LocalPost MediaItem.
        # Corresponds to the JSON property `media`
        # @return [Array<Google::Apis::MybusinessV4::MediaItem>]
        attr_accessor :media
      
        # Output only. Google identifier for this local post in the form: `accounts/`
        # account_id`/locations/`location_id`/localPosts/`local_post_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specific fields for offer posts.
        # Corresponds to the JSON property `offer`
        # @return [Google::Apis::MybusinessV4::LocalPostOffer]
        attr_accessor :offer
      
        # Output only. The link to the local post in Google search. This link can be
        # used to share the post via social media, email, text, etc.
        # Corresponds to the JSON property `searchUrl`
        # @return [String]
        attr_accessor :search_url
      
        # Output only. The state of the post, indicating what part of its lifecycle it
        # is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Description/body of the local post.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        # Required. The topic type of the post: standard, event, offer, or alert.
        # Corresponds to the JSON property `topicType`
        # @return [String]
        attr_accessor :topic_type
      
        # Output only. Time of the last modification of the post made by the user.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_type = args[:alert_type] if args.key?(:alert_type)
          @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event = args[:event] if args.key?(:event)
          @language_code = args[:language_code] if args.key?(:language_code)
          @media = args[:media] if args.key?(:media)
          @name = args[:name] if args.key?(:name)
          @offer = args[:offer] if args.key?(:offer)
          @search_url = args[:search_url] if args.key?(:search_url)
          @state = args[:state] if args.key?(:state)
          @summary = args[:summary] if args.key?(:summary)
          @topic_type = args[:topic_type] if args.key?(:topic_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # All the information pertaining to an event featured in a local post.
      class LocalPostEvent
        include Google::Apis::Core::Hashable
      
        # An interval of time, inclusive. It must contain all fields to be valid.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::MybusinessV4::TimeInterval]
        attr_accessor :schedule
      
        # Name of the event.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule = args[:schedule] if args.key?(:schedule)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # All the metrics requested for a Local Post.
      class LocalPostMetrics
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `localPostName`
        # @return [String]
        attr_accessor :local_post_name
      
        # A list of values for the requested metrics.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::MybusinessV4::MetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_post_name = args[:local_post_name] if args.key?(:local_post_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Specific fields for offer posts.
      class LocalPostOffer
        include Google::Apis::Core::Hashable
      
        # Optional. Offer code that is usable in store or online.
        # Corresponds to the JSON property `couponCode`
        # @return [String]
        attr_accessor :coupon_code
      
        # Optional. Online link to redeem offer.
        # Corresponds to the JSON property `redeemOnlineUrl`
        # @return [String]
        attr_accessor :redeem_online_url
      
        # Optional. Offer terms and conditions.
        # Corresponds to the JSON property `termsConditions`
        # @return [String]
        attr_accessor :terms_conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coupon_code = args[:coupon_code] if args.key?(:coupon_code)
          @redeem_online_url = args[:redeem_online_url] if args.key?(:redeem_online_url)
          @terms_conditions = args[:terms_conditions] if args.key?(:terms_conditions)
        end
      end
      
      # A location. See the [help center article] (https://support.google.com/business/
      # answer/3038177) for a detailed description of these fields, or the [category
      # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
      # business categories.
      class Location
        include Google::Apis::Core::Hashable
      
        # Additional information that is surfaced in AdWords.
        # Corresponds to the JSON property `adWordsLocationExtensions`
        # @return [Google::Apis::MybusinessV4::AdWordsLocationExtensions]
        attr_accessor :ad_words_location_extensions
      
        # Additional categories to describe your business. Categories help your
        # customers find accurate, specific results for services they're interested in.
        # To keep your business information accurate and live, make sure that you use as
        # few categories as possible to describe your overall core business. Choose
        # categories that are as specific as possible, but representative of your main
        # business.
        # Corresponds to the JSON property `additionalCategories`
        # @return [Array<Google::Apis::MybusinessV4::Category>]
        attr_accessor :additional_categories
      
        # Up to two phone numbers (mobile or landline, no fax) at which your business
        # can be called, in addition to your primary phone number.
        # Corresponds to the JSON property `additionalPhones`
        # @return [Array<String>]
        attr_accessor :additional_phones
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :address
      
        # Attributes for this location.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::MybusinessV4::Attribute>]
        attr_accessor :attributes
      
        # A collection of free-form strings to allow you to tag your business. These
        # labels are NOT user facing; only you can see them. Limited to 255 characters (
        # per label).
        # Corresponds to the JSON property `labels`
        # @return [Array<String>]
        attr_accessor :labels
      
        # The language of the location. Set during creation and not updateable.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
        attr_accessor :latlng
      
        # Alternate/surrogate key references for a location.
        # Corresponds to the JSON property `locationKey`
        # @return [Google::Apis::MybusinessV4::LocationKey]
        attr_accessor :location_key
      
        # Location name should reflect your business's real-world name, as used
        # consistently on your storefront, website, and stationery, and as known to
        # customers. Any additional information, when relevant, can be included in other
        # fields of the resource (for example, `Address`, `Categories`). Don't add
        # unnecessary information to your name (for example, prefer "Google" over "
        # Google Inc. - Mountain View Corporate Headquarters"). Don't include marketing
        # taglines, store codes, special characters, hours or closed/open status, phone
        # numbers, website URLs, service/product information, location/address or
        # directions, or containment information (for example, "Chase ATM in Duane Reade"
        # ).
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Contains a set of booleans that reflect the [state of a Location.](https://
        # support.google.com/business/answer/3480862)
        # Corresponds to the JSON property `locationState`
        # @return [Google::Apis::MybusinessV4::LocationState]
        attr_accessor :location_state
      
        # Additional non-user-editable information about the location.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinessV4::Metadata]
        attr_accessor :metadata
      
        # More hours for a business's different departments or specific customers.
        # Corresponds to the JSON property `moreHours`
        # @return [Array<Google::Apis::MybusinessV4::MoreHours>]
        attr_accessor :more_hours
      
        # Google identifier for this location in the form: `accounts/`account_id`/
        # locations/`location_id`` In the context of matches, this field will not be
        # populated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information related to the opening state of the business.
        # Corresponds to the JSON property `openInfo`
        # @return [Google::Apis::MybusinessV4::OpenInfo]
        attr_accessor :open_info
      
        # Price list information for this location.
        # Corresponds to the JSON property `priceLists`
        # @return [Array<Google::Apis::MybusinessV4::PriceList>]
        attr_accessor :price_lists
      
        # A category describing what this business is (not what it does). For a list of
        # valid category IDs, and the mappings to their human-readable names, see [
        # categories.list](https://developers.google.com/my-business/reference/rest/v4/
        # categories/list).
        # Corresponds to the JSON property `primaryCategory`
        # @return [Google::Apis::MybusinessV4::Category]
        attr_accessor :primary_category
      
        # A phone number that connects to your individual business location as directly
        # as possible. Use a local phone number instead of a central, call center
        # helpline number whenever possible.
        # Corresponds to the JSON property `primaryPhone`
        # @return [String]
        attr_accessor :primary_phone
      
        # All information pertaining to the location's profile.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::MybusinessV4::Profile]
        attr_accessor :profile
      
        # Represents the time periods that this location is open for business. Holds a
        # collection of TimePeriod instances.
        # Corresponds to the JSON property `regularHours`
        # @return [Google::Apis::MybusinessV4::BusinessHours]
        attr_accessor :regular_hours
      
        # Information of all parent and children locations related to this one.
        # Corresponds to the JSON property `relationshipData`
        # @return [Google::Apis::MybusinessV4::RelationshipData]
        attr_accessor :relationship_data
      
        # Service area businesses provide their service at the customer's location (for
        # example, a locksmith or plumber).
        # Corresponds to the JSON property `serviceArea`
        # @return [Google::Apis::MybusinessV4::ServiceAreaBusiness]
        attr_accessor :service_area
      
        # Represents a set of time periods when a location's operational hours differ
        # from its normal business hours.
        # Corresponds to the JSON property `specialHours`
        # @return [Google::Apis::MybusinessV4::SpecialHours]
        attr_accessor :special_hours
      
        # External identifier for this location, which must be unique inside a given
        # account. This is a means of associating the location with your own records.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # A URL for this business. If possible, use a URL that represents this
        # individual business location instead of a generic website/URL that represents
        # all locations, or the brand.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_words_location_extensions = args[:ad_words_location_extensions] if args.key?(:ad_words_location_extensions)
          @additional_categories = args[:additional_categories] if args.key?(:additional_categories)
          @additional_phones = args[:additional_phones] if args.key?(:additional_phones)
          @address = args[:address] if args.key?(:address)
          @attributes = args[:attributes] if args.key?(:attributes)
          @labels = args[:labels] if args.key?(:labels)
          @language_code = args[:language_code] if args.key?(:language_code)
          @latlng = args[:latlng] if args.key?(:latlng)
          @location_key = args[:location_key] if args.key?(:location_key)
          @location_name = args[:location_name] if args.key?(:location_name)
          @location_state = args[:location_state] if args.key?(:location_state)
          @metadata = args[:metadata] if args.key?(:metadata)
          @more_hours = args[:more_hours] if args.key?(:more_hours)
          @name = args[:name] if args.key?(:name)
          @open_info = args[:open_info] if args.key?(:open_info)
          @price_lists = args[:price_lists] if args.key?(:price_lists)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
          @primary_phone = args[:primary_phone] if args.key?(:primary_phone)
          @profile = args[:profile] if args.key?(:profile)
          @regular_hours = args[:regular_hours] if args.key?(:regular_hours)
          @relationship_data = args[:relationship_data] if args.key?(:relationship_data)
          @service_area = args[:service_area] if args.key?(:service_area)
          @special_hours = args[:special_hours] if args.key?(:special_hours)
          @store_code = args[:store_code] if args.key?(:store_code)
          @website_url = args[:website_url] if args.key?(:website_url)
        end
      end
      
      # How the media item is associated with its location.
      class LocationAssociation
        include Google::Apis::Core::Hashable
      
        # The category that this location photo belongs to.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The ID of a price list item that this location photo is associated with.
        # Corresponds to the JSON property `priceListItemId`
        # @return [String]
        attr_accessor :price_list_item_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @price_list_item_id = args[:price_list_item_id] if args.key?(:price_list_item_id)
        end
      end
      
      # A location indexed with the regions that people usually come from. This is
      # captured by counting how many driving-direction requests to this location are
      # from each region.
      class LocationDrivingDirectionMetrics
        include Google::Apis::Core::Hashable
      
        # The location resource name this metric value belongs to.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Time zone (IANA timezone IDs, for example, 'Europe/London') of the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Driving-direction requests by source region. By convention, these are sorted
        # by count with at most 10 results.
        # Corresponds to the JSON property `topDirectionSources`
        # @return [Array<Google::Apis::MybusinessV4::TopDirectionSources>]
        attr_accessor :top_direction_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_name = args[:location_name] if args.key?(:location_name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @top_direction_sources = args[:top_direction_sources] if args.key?(:top_direction_sources)
        end
      end
      
      # Alternate/surrogate key references for a location.
      class LocationKey
        include Google::Apis::Core::Hashable
      
        # Output only. A value of true indicates that an unset place ID is deliberate,
        # which is different from no association being made yet.
        # Corresponds to the JSON property `explicitNoPlaceId`
        # @return [Boolean]
        attr_accessor :explicit_no_place_id
        alias_method :explicit_no_place_id?, :explicit_no_place_id
      
        # If this location has been verified and is connected to/appears on Google Maps,
        # this field is populated with the place ID for the location. This ID can be
        # used in various Places APIs. If this location is unverified, this field may be
        # populated if the location has been associated with a place that appears on
        # Google Maps. This field can be set during Create calls, but not for Update.
        # The additional `explicit_no_place_id` bool qualifies whether an unset place ID
        # is deliberate or not.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Output only. If this location has a Google+ page associated with it, this is
        # populated with the Google+ page ID for this location.
        # Corresponds to the JSON property `plusPageId`
        # @return [String]
        attr_accessor :plus_page_id
      
        # Output only. The `request_id` used to create this location. May be empty if
        # this location was created outside of the Google My Business API or Business
        # Profile Locations.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_no_place_id = args[:explicit_no_place_id] if args.key?(:explicit_no_place_id)
          @place_id = args[:place_id] if args.key?(:place_id)
          @plus_page_id = args[:plus_page_id] if args.key?(:plus_page_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A series of Metrics and BreakdownMetrics associated with a Location over some
      # time range.
      class LocationMetrics
        include Google::Apis::Core::Hashable
      
        # The location resource name these values belong to.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # A list of values for the requested metrics.
        # Corresponds to the JSON property `metricValues`
        # @return [Array<Google::Apis::MybusinessV4::MetricValue>]
        attr_accessor :metric_values
      
        # IANA timezone for the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_name = args[:location_name] if args.key?(:location_name)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Represents a review with location information.
      class LocationReview
        include Google::Apis::Core::Hashable
      
        # Location resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Represents a review for a location.
        # Corresponds to the JSON property `review`
        # @return [Google::Apis::MybusinessV4::Review]
        attr_accessor :review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @review = args[:review] if args.key?(:review)
        end
      end
      
      # Contains a set of booleans that reflect the [state of a Location.](https://
      # support.google.com/business/answer/3480862)
      class LocationState
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the location can be deleted using the Google My
        # Business API.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Output only. Indicates if the listing is eligible for food menu.
        # Corresponds to the JSON property `canHaveFoodMenus`
        # @return [Boolean]
        attr_accessor :can_have_food_menus
        alias_method :can_have_food_menus?, :can_have_food_menus
      
        # Output only. Indicates if the listing can modify a ServiceList.
        # Corresponds to the JSON property `canModifyServiceList`
        # @return [Boolean]
        attr_accessor :can_modify_service_list
        alias_method :can_modify_service_list?, :can_modify_service_list
      
        # Output only. Indicates whether the location can operate on Health data.
        # Corresponds to the JSON property `canOperateHealthData`
        # @return [Boolean]
        attr_accessor :can_operate_health_data
        alias_method :can_operate_health_data?, :can_operate_health_data
      
        # Output only. Indicates whether the location can operate on Lodging data.
        # Corresponds to the JSON property `canOperateLodgingData`
        # @return [Boolean]
        attr_accessor :can_operate_lodging_data
        alias_method :can_operate_lodging_data?, :can_operate_lodging_data
      
        # Output only. Indicates whether the location can be updated.
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        # Output only. Indicates whether any of this Location's properties are in the
        # edit pending state.
        # Corresponds to the JSON property `hasPendingEdits`
        # @return [Boolean]
        attr_accessor :has_pending_edits
        alias_method :has_pending_edits?, :has_pending_edits
      
        # Output only. Indicates whether the location has pending verification requests.
        # Corresponds to the JSON property `hasPendingVerification`
        # @return [Boolean]
        attr_accessor :has_pending_verification
        alias_method :has_pending_verification?, :has_pending_verification
      
        # Output only. Indicates whether the location is disabled.
        # Corresponds to the JSON property `isDisabled`
        # @return [Boolean]
        attr_accessor :is_disabled
        alias_method :is_disabled?, :is_disabled
      
        # Output only. Indicates whether the location is disconnected from a place on
        # Google Maps.
        # Corresponds to the JSON property `isDisconnected`
        # @return [Boolean]
        attr_accessor :is_disconnected
        alias_method :is_disconnected?, :is_disconnected
      
        # Output only. Indicates whether the location is a duplicate of another location.
        # Corresponds to the JSON property `isDuplicate`
        # @return [Boolean]
        attr_accessor :is_duplicate
        alias_method :is_duplicate?, :is_duplicate
      
        # Output only. Indicates whether the place ID associated with this location has
        # updates.
        # Corresponds to the JSON property `isGoogleUpdated`
        # @return [Boolean]
        attr_accessor :is_google_updated
        alias_method :is_google_updated?, :is_google_updated
      
        # Output only. Indicates whether [accounts.locations.localPosts](/my-business/
        # reference/rest/v4/accounts.locations.localPosts) is disabled for this location.
        # Corresponds to the JSON property `isLocalPostApiDisabled`
        # @return [Boolean]
        attr_accessor :is_local_post_api_disabled
        alias_method :is_local_post_api_disabled?, :is_local_post_api_disabled
      
        # Output only. Indicates whether the review of the location is pending.
        # Corresponds to the JSON property `isPendingReview`
        # @return [Boolean]
        attr_accessor :is_pending_review
        alias_method :is_pending_review?, :is_pending_review
      
        # Output only. Indicates whether the location is published.
        # Corresponds to the JSON property `isPublished`
        # @return [Boolean]
        attr_accessor :is_published
        alias_method :is_published?, :is_published
      
        # Output only. Indicates whether the location is suspended. Suspended locations
        # are not visible to end users in Google products. If you believe this was a
        # mistake, see the [help center article] (https://support.google.com/business/
        # answer/4569145).
        # Corresponds to the JSON property `isSuspended`
        # @return [Boolean]
        attr_accessor :is_suspended
        alias_method :is_suspended?, :is_suspended
      
        # Output only. Indicates whether the location is verified.
        # Corresponds to the JSON property `isVerified`
        # @return [Boolean]
        attr_accessor :is_verified
        alias_method :is_verified?, :is_verified
      
        # Output only. Indicates whether the location requires reverification.
        # Corresponds to the JSON property `needsReverification`
        # @return [Boolean]
        attr_accessor :needs_reverification
        alias_method :needs_reverification?, :needs_reverification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_have_food_menus = args[:can_have_food_menus] if args.key?(:can_have_food_menus)
          @can_modify_service_list = args[:can_modify_service_list] if args.key?(:can_modify_service_list)
          @can_operate_health_data = args[:can_operate_health_data] if args.key?(:can_operate_health_data)
          @can_operate_lodging_data = args[:can_operate_lodging_data] if args.key?(:can_operate_lodging_data)
          @can_update = args[:can_update] if args.key?(:can_update)
          @has_pending_edits = args[:has_pending_edits] if args.key?(:has_pending_edits)
          @has_pending_verification = args[:has_pending_verification] if args.key?(:has_pending_verification)
          @is_disabled = args[:is_disabled] if args.key?(:is_disabled)
          @is_disconnected = args[:is_disconnected] if args.key?(:is_disconnected)
          @is_duplicate = args[:is_duplicate] if args.key?(:is_duplicate)
          @is_google_updated = args[:is_google_updated] if args.key?(:is_google_updated)
          @is_local_post_api_disabled = args[:is_local_post_api_disabled] if args.key?(:is_local_post_api_disabled)
          @is_pending_review = args[:is_pending_review] if args.key?(:is_pending_review)
          @is_published = args[:is_published] if args.key?(:is_published)
          @is_suspended = args[:is_suspended] if args.key?(:is_suspended)
          @is_verified = args[:is_verified] if args.key?(:is_verified)
          @needs_reverification = args[:needs_reverification] if args.key?(:needs_reverification)
        end
      end
      
      # Lodging of a location that provides accomodations.
      class Lodging
        include Google::Apis::Core::Hashable
      
        # Physical adaptations made to the property in consideration of varying levels
        # of human physical ability.
        # Corresponds to the JSON property `accessibility`
        # @return [Google::Apis::MybusinessV4::Accessibility]
        attr_accessor :accessibility
      
        # Amenities and features related to leisure and play.
        # Corresponds to the JSON property `activities`
        # @return [Google::Apis::MybusinessV4::Activities]
        attr_accessor :activities
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `allUnits`
        # @return [Google::Apis::MybusinessV4::GuestUnitFeatures]
        attr_accessor :all_units
      
        # Features of the property of specific interest to the business traveler.
        # Corresponds to the JSON property `business`
        # @return [Google::Apis::MybusinessV4::Business]
        attr_accessor :business
      
        # An individual room, such as kitchen, bathroom, bedroom, within a bookable
        # guest unit.
        # Corresponds to the JSON property `commonLivingArea`
        # @return [Google::Apis::MybusinessV4::LivingArea]
        attr_accessor :common_living_area
      
        # The ways in which the property provides guests with the ability to access the
        # internet.
        # Corresponds to the JSON property `connectivity`
        # @return [Google::Apis::MybusinessV4::Connectivity]
        attr_accessor :connectivity
      
        # Services and amenities for families and young guests.
        # Corresponds to the JSON property `families`
        # @return [Google::Apis::MybusinessV4::Families]
        attr_accessor :families
      
        # Meals, snacks, and beverages available at the property.
        # Corresponds to the JSON property `foodAndDrink`
        # @return [Google::Apis::MybusinessV4::FoodAndDrink]
        attr_accessor :food_and_drink
      
        # Individual GuestUnitTypes that are available in this Lodging.
        # Corresponds to the JSON property `guestUnits`
        # @return [Array<Google::Apis::MybusinessV4::GuestUnitType>]
        attr_accessor :guest_units
      
        # Health and safety measures implemented by the hotel during COVID-19.
        # Corresponds to the JSON property `healthAndSafety`
        # @return [Google::Apis::MybusinessV4::HealthAndSafety]
        attr_accessor :health_and_safety
      
        # Conveniences provided in guest units to facilitate an easier, more comfortable
        # stay.
        # Corresponds to the JSON property `housekeeping`
        # @return [Google::Apis::MybusinessV4::Housekeeping]
        attr_accessor :housekeeping
      
        # Metadata for the Lodging.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::MybusinessV4::LodgingMetadata]
        attr_accessor :metadata
      
        # Required. Google identifier for this location in the form: `accounts/`
        # account_id`/locations/`location_id`/lodging`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parking options at the property.
        # Corresponds to the JSON property `parking`
        # @return [Google::Apis::MybusinessV4::Parking]
        attr_accessor :parking
      
        # Policies regarding guest-owned animals.
        # Corresponds to the JSON property `pets`
        # @return [Google::Apis::MybusinessV4::Pets]
        attr_accessor :pets
      
        # Property rules that impact guests.
        # Corresponds to the JSON property `policies`
        # @return [Google::Apis::MybusinessV4::Policies]
        attr_accessor :policies
      
        # Swimming pool or recreational water facilities available at the hotel.
        # Corresponds to the JSON property `pools`
        # @return [Google::Apis::MybusinessV4::Pools]
        attr_accessor :pools
      
        # General factual information about the property's physical structure and
        # important dates.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::MybusinessV4::Property]
        attr_accessor :property
      
        # Conveniences or help provided by the property to facilitate an easier, more
        # comfortable stay.
        # Corresponds to the JSON property `services`
        # @return [Google::Apis::MybusinessV4::Services]
        attr_accessor :services
      
        # Features and available amenities in the guest unit.
        # Corresponds to the JSON property `someUnits`
        # @return [Google::Apis::MybusinessV4::GuestUnitFeatures]
        attr_accessor :some_units
      
        # Vehicles or vehicular services facilitated or owned by the property.
        # Corresponds to the JSON property `transportation`
        # @return [Google::Apis::MybusinessV4::Transportation]
        attr_accessor :transportation
      
        # Guest facilities at the property to promote or maintain health, beauty, and
        # fitness.
        # Corresponds to the JSON property `wellness`
        # @return [Google::Apis::MybusinessV4::Wellness]
        attr_accessor :wellness
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility = args[:accessibility] if args.key?(:accessibility)
          @activities = args[:activities] if args.key?(:activities)
          @all_units = args[:all_units] if args.key?(:all_units)
          @business = args[:business] if args.key?(:business)
          @common_living_area = args[:common_living_area] if args.key?(:common_living_area)
          @connectivity = args[:connectivity] if args.key?(:connectivity)
          @families = args[:families] if args.key?(:families)
          @food_and_drink = args[:food_and_drink] if args.key?(:food_and_drink)
          @guest_units = args[:guest_units] if args.key?(:guest_units)
          @health_and_safety = args[:health_and_safety] if args.key?(:health_and_safety)
          @housekeeping = args[:housekeeping] if args.key?(:housekeeping)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @parking = args[:parking] if args.key?(:parking)
          @pets = args[:pets] if args.key?(:pets)
          @policies = args[:policies] if args.key?(:policies)
          @pools = args[:pools] if args.key?(:pools)
          @property = args[:property] if args.key?(:property)
          @services = args[:services] if args.key?(:services)
          @some_units = args[:some_units] if args.key?(:some_units)
          @transportation = args[:transportation] if args.key?(:transportation)
          @wellness = args[:wellness] if args.key?(:wellness)
        end
      end
      
      # Metadata for the Lodging.
      class LodgingMetadata
        include Google::Apis::Core::Hashable
      
        # Required. The latest time at which the Lodging data is asserted to be true in
        # the real world. This is not necessarily the time at which the request is made.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a possible match to a location.
      class MatchedLocation
        include Google::Apis::Core::Hashable
      
        # Is this an exact match?
        # Corresponds to the JSON property `isExactMatch`
        # @return [Boolean]
        attr_accessor :is_exact_match
        alias_method :is_exact_match?, :is_exact_match
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_exact_match = args[:is_exact_match] if args.key?(:is_exact_match)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Insights and statistics for the media item.
      class MediaInsights
        include Google::Apis::Core::Hashable
      
        # Output only. The number of times the media item has been viewed.
        # Corresponds to the JSON property `viewCount`
        # @return [Fixnum]
        attr_accessor :view_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @view_count = args[:view_count] if args.key?(:view_count)
        end
      end
      
      # A single media item.
      class MediaItem
        include Google::Apis::Core::Hashable
      
        # Attribution information for customer media items, such as the contributor's
        # name and profile picture.
        # Corresponds to the JSON property `attribution`
        # @return [Google::Apis::MybusinessV4::Attribution]
        attr_accessor :attribution
      
        # Output only. Creation time of this media item.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Reference to the photo binary data of a `MediaItem` uploaded through the
        # Google My Business API. Create a data ref using StartUploadMediaItemData, and
        # use this ref when uploading bytes to [UpdateMedia] and subsequently calling
        # CreateMediaItem.
        # Corresponds to the JSON property `dataRef`
        # @return [Google::Apis::MybusinessV4::MediaItemDataRef]
        attr_accessor :data_ref
      
        # Description for this media item. Descriptions cannot be modified through the
        # Google My Business API, but can be set when creating a new media item that is
        # not a cover photo.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Dimensions of the media item.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::MybusinessV4::Dimensions]
        attr_accessor :dimensions
      
        # Output only. Google-hosted URL for this media item. This URL is not static
        # since it may change over time. For video this will be a preview image with an
        # overlaid play icon.
        # Corresponds to the JSON property `googleUrl`
        # @return [String]
        attr_accessor :google_url
      
        # Insights and statistics for the media item.
        # Corresponds to the JSON property `insights`
        # @return [Google::Apis::MybusinessV4::MediaInsights]
        attr_accessor :insights
      
        # How the media item is associated with its location.
        # Corresponds to the JSON property `locationAssociation`
        # @return [Google::Apis::MybusinessV4::LocationAssociation]
        attr_accessor :location_association
      
        # The format of this media item. Must be set when the media item is created, and
        # is read-only on all other requests. Cannot be updated.
        # Corresponds to the JSON property `mediaFormat`
        # @return [String]
        attr_accessor :media_format
      
        # The resource name for this media item. `accounts/`account_id`/locations/`
        # location_id`/media/`media_key``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A publicly accessible URL where the media item can be retrieved from. When
        # creating one of this or data_ref must be set to specify the source of the
        # media item. If `source_url` was used when creating a media item, it will be
        # populated with that source URL when the media item is retrieved. This field
        # cannot be updated.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        # Output only. Where provided, the URL of a thumbnail image for this media item.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution = args[:attribution] if args.key?(:attribution)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_ref = args[:data_ref] if args.key?(:data_ref)
          @description = args[:description] if args.key?(:description)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @google_url = args[:google_url] if args.key?(:google_url)
          @insights = args[:insights] if args.key?(:insights)
          @location_association = args[:location_association] if args.key?(:location_association)
          @media_format = args[:media_format] if args.key?(:media_format)
          @name = args[:name] if args.key?(:name)
          @source_url = args[:source_url] if args.key?(:source_url)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
        end
      end
      
      # Reference to the photo binary data of a `MediaItem` uploaded through the
      # Google My Business API. Create a data ref using StartUploadMediaItemData, and
      # use this ref when uploading bytes to [UpdateMedia] and subsequently calling
      # CreateMediaItem.
      class MediaItemDataRef
        include Google::Apis::Core::Hashable
      
        # The unique ID for this media item's binary data. Used to upload the photo data
        # with [UpdateMedia] and when creating a new media item from those bytes with
        # CreateMediaItem. Example of uploading bytes: `curl -X POST -T`path_to_file` "
        # http://mybusiness.googleapis.com/upload/v1/media/`resource_name`?upload_type=
        # media"` For CreateMediaItem calls, set this as the `MediaItem` `data_ref`.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Label to be used when displaying the menu and its various sub-components.
      class MenuLabel
        include Google::Apis::Core::Hashable
      
        # Optional. Supplementary information of the component.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the component.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The BCP 47 code of language. If the language is not available, it
        # will default to English.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Additional non-user-editable information about the location.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Information about the location that this location duplicates.
        # Corresponds to the JSON property `duplicate`
        # @return [Google::Apis::MybusinessV4::Duplicate]
        attr_accessor :duplicate
      
        # A link to the location on Maps.
        # Corresponds to the JSON property `mapsUrl`
        # @return [String]
        attr_accessor :maps_url
      
        # A link to the page on Google Search where a customer can leave a review for
        # the location.
        # Corresponds to the JSON property `newReviewUrl`
        # @return [String]
        attr_accessor :new_review_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicate = args[:duplicate] if args.key?(:duplicate)
          @maps_url = args[:maps_url] if args.key?(:maps_url)
          @new_review_url = args[:new_review_url] if args.key?(:new_review_url)
        end
      end
      
      # A request to return values for one metric and the options for how those values
      # should be returned.
      class MetricRequest
        include Google::Apis::Core::Hashable
      
        # The requested metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # How the values should appear when returned.
        # Corresponds to the JSON property `options`
        # @return [Array<String>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # A value for a single Metric from a starting time.
      class MetricValue
        include Google::Apis::Core::Hashable
      
        # Dimensional values for this metric.
        # Corresponds to the JSON property `dimensionalValues`
        # @return [Array<Google::Apis::MybusinessV4::DimensionalMetricValue>]
        attr_accessor :dimensional_values
      
        # The metric for which the value applies.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # A value for a single metric with a given time dimension.
        # Corresponds to the JSON property `totalValue`
        # @return [Google::Apis::MybusinessV4::DimensionalMetricValue]
        attr_accessor :total_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensional_values = args[:dimensional_values] if args.key?(:dimensional_values)
          @metric = args[:metric] if args.key?(:metric)
          @total_value = args[:total_value] if args.key?(:total_value)
        end
      end
      
      # Minimized contact measures implemented by the hotel during COVID-19.
      class MinimizedContact
        include Google::Apis::Core::Hashable
      
        # No-contact check-in and check-out.
        # Corresponds to the JSON property `contactlessCheckinCheckout`
        # @return [Boolean]
        attr_accessor :contactless_checkin_checkout
        alias_method :contactless_checkin_checkout?, :contactless_checkin_checkout
      
        # Contactless check-in check-out exception.
        # Corresponds to the JSON property `contactlessCheckinCheckoutException`
        # @return [String]
        attr_accessor :contactless_checkin_checkout_exception
      
        # Keyless mobile entry to guest rooms.
        # Corresponds to the JSON property `digitalGuestRoomKeys`
        # @return [Boolean]
        attr_accessor :digital_guest_room_keys
        alias_method :digital_guest_room_keys?, :digital_guest_room_keys
      
        # Digital guest room keys exception.
        # Corresponds to the JSON property `digitalGuestRoomKeysException`
        # @return [String]
        attr_accessor :digital_guest_room_keys_exception
      
        # Housekeeping scheduled by request only.
        # Corresponds to the JSON property `housekeepingScheduledRequestOnly`
        # @return [Boolean]
        attr_accessor :housekeeping_scheduled_request_only
        alias_method :housekeeping_scheduled_request_only?, :housekeeping_scheduled_request_only
      
        # Housekeeping scheduled request only exception.
        # Corresponds to the JSON property `housekeepingScheduledRequestOnlyException`
        # @return [String]
        attr_accessor :housekeeping_scheduled_request_only_exception
      
        # High-touch items, such as magazines, removed from common areas.
        # Corresponds to the JSON property `noHighTouchItemsCommonAreas`
        # @return [Boolean]
        attr_accessor :no_high_touch_items_common_areas
        alias_method :no_high_touch_items_common_areas?, :no_high_touch_items_common_areas
      
        # No high touch items common areas exception.
        # Corresponds to the JSON property `noHighTouchItemsCommonAreasException`
        # @return [String]
        attr_accessor :no_high_touch_items_common_areas_exception
      
        # High-touch items, such as decorative pillows, removed from guest rooms.
        # Corresponds to the JSON property `noHighTouchItemsGuestRooms`
        # @return [Boolean]
        attr_accessor :no_high_touch_items_guest_rooms
        alias_method :no_high_touch_items_guest_rooms?, :no_high_touch_items_guest_rooms
      
        # No high touch items guest rooms exception.
        # Corresponds to the JSON property `noHighTouchItemsGuestRoomsException`
        # @return [String]
        attr_accessor :no_high_touch_items_guest_rooms_exception
      
        # Plastic key cards are disinfected or discarded.
        # Corresponds to the JSON property `plasticKeycardsDisinfected`
        # @return [Boolean]
        attr_accessor :plastic_keycards_disinfected
        alias_method :plastic_keycards_disinfected?, :plastic_keycards_disinfected
      
        # Plastic keycards disinfected exception.
        # Corresponds to the JSON property `plasticKeycardsDisinfectedException`
        # @return [String]
        attr_accessor :plastic_keycards_disinfected_exception
      
        # Buffer maintained between room bookings.
        # Corresponds to the JSON property `roomBookingsBuffer`
        # @return [Boolean]
        attr_accessor :room_bookings_buffer
        alias_method :room_bookings_buffer?, :room_bookings_buffer
      
        # Room bookings buffer exception.
        # Corresponds to the JSON property `roomBookingsBufferException`
        # @return [String]
        attr_accessor :room_bookings_buffer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contactless_checkin_checkout = args[:contactless_checkin_checkout] if args.key?(:contactless_checkin_checkout)
          @contactless_checkin_checkout_exception = args[:contactless_checkin_checkout_exception] if args.key?(:contactless_checkin_checkout_exception)
          @digital_guest_room_keys = args[:digital_guest_room_keys] if args.key?(:digital_guest_room_keys)
          @digital_guest_room_keys_exception = args[:digital_guest_room_keys_exception] if args.key?(:digital_guest_room_keys_exception)
          @housekeeping_scheduled_request_only = args[:housekeeping_scheduled_request_only] if args.key?(:housekeeping_scheduled_request_only)
          @housekeeping_scheduled_request_only_exception = args[:housekeeping_scheduled_request_only_exception] if args.key?(:housekeeping_scheduled_request_only_exception)
          @no_high_touch_items_common_areas = args[:no_high_touch_items_common_areas] if args.key?(:no_high_touch_items_common_areas)
          @no_high_touch_items_common_areas_exception = args[:no_high_touch_items_common_areas_exception] if args.key?(:no_high_touch_items_common_areas_exception)
          @no_high_touch_items_guest_rooms = args[:no_high_touch_items_guest_rooms] if args.key?(:no_high_touch_items_guest_rooms)
          @no_high_touch_items_guest_rooms_exception = args[:no_high_touch_items_guest_rooms_exception] if args.key?(:no_high_touch_items_guest_rooms_exception)
          @plastic_keycards_disinfected = args[:plastic_keycards_disinfected] if args.key?(:plastic_keycards_disinfected)
          @plastic_keycards_disinfected_exception = args[:plastic_keycards_disinfected_exception] if args.key?(:plastic_keycards_disinfected_exception)
          @room_bookings_buffer = args[:room_bookings_buffer] if args.key?(:room_bookings_buffer)
          @room_bookings_buffer_exception = args[:room_bookings_buffer_exception] if args.key?(:room_bookings_buffer_exception)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # The time periods during which a location is open for certain types of business.
      class MoreHours
        include Google::Apis::Core::Hashable
      
        # Required. Type of hours. Clients should call `#link businessCategories:
        # BatchGet` to get supported hours types for categories of their locations.
        # Corresponds to the JSON property `hoursTypeId`
        # @return [String]
        attr_accessor :hours_type_id
      
        # Required. A collection of times that this location is open. Each period
        # represents a range of hours when the location is open during the week.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::MybusinessV4::TimePeriod>]
        attr_accessor :periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours_type_id = args[:hours_type_id] if args.key?(:hours_type_id)
          @periods = args[:periods] if args.key?(:periods)
        end
      end
      
      # More hours types that a business can offers, in addition to its regular hours.
      class MoreHoursType
        include Google::Apis::Core::Hashable
      
        # Output only. The human-readable English display name for the hours type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stable ID provided by Google for this hours type.
        # Corresponds to the JSON property `hoursTypeId`
        # @return [String]
        attr_accessor :hours_type_id
      
        # Output only. The human-readable localized display name for the hours type.
        # Corresponds to the JSON property `localizedDisplayName`
        # @return [String]
        attr_accessor :localized_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @hours_type_id = args[:hours_type_id] if args.key?(:hours_type_id)
          @localized_display_name = args[:localized_display_name] if args.key?(:localized_display_name)
        end
      end
      
      # A Google Cloud Pub/Sub topic where notifications can be published when a
      # location is updated or has a new review. There will be only one notification
      # settings resource per-account.
      class Notifications
        include Google::Apis::Core::Hashable
      
        # Output only. The notifications resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The types of notifications that will be sent to the Cloud Pub/Sub topic. At
        # least one must be specified. To stop receiving notifications entirely, use
        # DeleteNotifications.
        # Corresponds to the JSON property `notificationTypes`
        # @return [Array<String>]
        attr_accessor :notification_types
      
        # The Google Cloud Pub/Sub topic that will receive notifications when locations
        # managed by this account are updated. If unset, no notifications will be posted.
        # The account mybusiness-api-pubsub@system.gserviceaccount.com must have at
        # least Publish permissions on the Cloud Pub/Sub topic.
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @notification_types = args[:notification_types] if args.key?(:notification_types)
          @topic_name = args[:topic_name] if args.key?(:topic_name)
        end
      end
      
      # This message denotes nutrition information with an upper bound and lower bound
      # range and can be represented by mass unit. Lower amount must be specified.
      # Both lower and upper amounts are non-negative numbers.
      class NutritionFact
        include Google::Apis::Core::Hashable
      
        # Required. Lower amount of nutrition
        # Corresponds to the JSON property `lowerAmount`
        # @return [Float]
        attr_accessor :lower_amount
      
        # Required. Unit of the given nutrition information.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Optional. Upper amount of nutrition
        # Corresponds to the JSON property `upperAmount`
        # @return [Float]
        attr_accessor :upper_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_amount = args[:lower_amount] if args.key?(:lower_amount)
          @unit = args[:unit] if args.key?(:unit)
          @upper_amount = args[:upper_amount] if args.key?(:upper_amount)
        end
      end
      
      # This message represents nutrition facts for a food dish.
      class NutritionFacts
        include Google::Apis::Core::Hashable
      
        # This message denotes calories information with an upper bound and lower bound
        # range. Lower amount must be specified. Both lower and upper amounts are non-
        # negative numbers.
        # Corresponds to the JSON property `calories`
        # @return [Google::Apis::MybusinessV4::CaloriesFact]
        attr_accessor :calories
      
        # This message denotes nutrition information with an upper bound and lower bound
        # range and can be represented by mass unit. Lower amount must be specified.
        # Both lower and upper amounts are non-negative numbers.
        # Corresponds to the JSON property `cholesterol`
        # @return [Google::Apis::MybusinessV4::NutritionFact]
        attr_accessor :cholesterol
      
        # This message denotes nutrition information with an upper bound and lower bound
        # range and can be represented by mass unit. Lower amount must be specified.
        # Both lower and upper amounts are non-negative numbers.
        # Corresponds to the JSON property `protein`
        # @return [Google::Apis::MybusinessV4::NutritionFact]
        attr_accessor :protein
      
        # This message denotes nutrition information with an upper bound and lower bound
        # range and can be represented by mass unit. Lower amount must be specified.
        # Both lower and upper amounts are non-negative numbers.
        # Corresponds to the JSON property `sodium`
        # @return [Google::Apis::MybusinessV4::NutritionFact]
        attr_accessor :sodium
      
        # This message denotes nutrition information with an upper bound and lower bound
        # range and can be represented by mass unit. Lower amount must be specified.
        # Both lower and upper amounts are non-negative numbers.
        # Corresponds to the JSON property `totalCarbohydrate`
        # @return [Google::Apis::MybusinessV4::NutritionFact]
        attr_accessor :total_carbohydrate
      
        # This message denotes nutrition information with an upper bound and lower bound
        # range and can be represented by mass unit. Lower amount must be specified.
        # Both lower and upper amounts are non-negative numbers.
        # Corresponds to the JSON property `totalFat`
        # @return [Google::Apis::MybusinessV4::NutritionFact]
        attr_accessor :total_fat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @calories = args[:calories] if args.key?(:calories)
          @cholesterol = args[:cholesterol] if args.key?(:cholesterol)
          @protein = args[:protein] if args.key?(:protein)
          @sodium = args[:sodium] if args.key?(:sodium)
          @total_carbohydrate = args[:total_carbohydrate] if args.key?(:total_carbohydrate)
          @total_fat = args[:total_fat] if args.key?(:total_fat)
        end
      end
      
      # Information related to the opening state of the business.
      class OpenInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether this business is eligible for re-open.
        # Corresponds to the JSON property `canReopen`
        # @return [Boolean]
        attr_accessor :can_reopen
        alias_method :can_reopen?, :can_reopen
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `openingDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :opening_date
      
        # Indicates whether or not the Location is currently open for business. All
        # locations are open by default, unless updated to be closed.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reopen = args[:can_reopen] if args.key?(:can_reopen)
          @opening_date = args[:opening_date] if args.key?(:opening_date)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Additional Info stored for an organization.
      class OrganizationInfo
        include Google::Apis::Core::Hashable
      
        # The contact number for the organization.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :postal_address
      
        # The registered domain for the account.
        # Corresponds to the JSON property `registeredDomain`
        # @return [String]
        attr_accessor :registered_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @registered_domain = args[:registered_domain] if args.key?(:registered_domain)
        end
      end
      
      # Parking options at the property.
      class Parking
        include Google::Apis::Core::Hashable
      
        # Electric car charging stations. Electric power stations, usually located
        # outdoors, into which guests plug their electric cars to receive a charge.
        # Corresponds to the JSON property `electricCarChargingStations`
        # @return [Boolean]
        attr_accessor :electric_car_charging_stations
        alias_method :electric_car_charging_stations?, :electric_car_charging_stations
      
        # Electric car charging stations exception.
        # Corresponds to the JSON property `electricCarChargingStationsException`
        # @return [String]
        attr_accessor :electric_car_charging_stations_exception
      
        # Free parking. The hotel allows the cars of guests to be parked for free.
        # Parking facility may be an outdoor lot or an indoor garage, but must be onsite.
        # Nearby parking does not apply. Parking may be performed by the guest or by
        # hotel staff. Free parking must be available to all guests (limited conditions
        # does not apply).
        # Corresponds to the JSON property `freeParking`
        # @return [Boolean]
        attr_accessor :free_parking
        alias_method :free_parking?, :free_parking
      
        # Free parking exception.
        # Corresponds to the JSON property `freeParkingException`
        # @return [String]
        attr_accessor :free_parking_exception
      
        # Free self parking. Guests park their own cars for free. Parking facility may
        # be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does
        # not apply.
        # Corresponds to the JSON property `freeSelfParking`
        # @return [Boolean]
        attr_accessor :free_self_parking
        alias_method :free_self_parking?, :free_self_parking
      
        # Free self parking exception.
        # Corresponds to the JSON property `freeSelfParkingException`
        # @return [String]
        attr_accessor :free_self_parking_exception
      
        # Free valet parking. Hotel staff member parks the cars of guests. Parking with
        # this service is free.
        # Corresponds to the JSON property `freeValetParking`
        # @return [Boolean]
        attr_accessor :free_valet_parking
        alias_method :free_valet_parking?, :free_valet_parking
      
        # Free valet parking exception.
        # Corresponds to the JSON property `freeValetParkingException`
        # @return [String]
        attr_accessor :free_valet_parking_exception
      
        # Parking available. The hotel allows the cars of guests to be parked. Can be
        # free or for a fee. Parking facility may be an outdoor lot or an indoor garage,
        # but must be onsite. Nearby parking does not apply. Parking may be performed by
        # the guest or by hotel staff.
        # Corresponds to the JSON property `parkingAvailable`
        # @return [Boolean]
        attr_accessor :parking_available
        alias_method :parking_available?, :parking_available
      
        # Parking available exception.
        # Corresponds to the JSON property `parkingAvailableException`
        # @return [String]
        attr_accessor :parking_available_exception
      
        # Self parking available. Guests park their own cars. Parking facility may be an
        # outdoor lot or an indoor garage, but must be onsite. Nearby parking does not
        # apply. Can be free or for a fee.
        # Corresponds to the JSON property `selfParkingAvailable`
        # @return [Boolean]
        attr_accessor :self_parking_available
        alias_method :self_parking_available?, :self_parking_available
      
        # Self parking available exception.
        # Corresponds to the JSON property `selfParkingAvailableException`
        # @return [String]
        attr_accessor :self_parking_available_exception
      
        # Valet parking available. Hotel staff member parks the cars of guests. Parking
        # with this service can be free or for a fee.
        # Corresponds to the JSON property `valetParkingAvailable`
        # @return [Boolean]
        attr_accessor :valet_parking_available
        alias_method :valet_parking_available?, :valet_parking_available
      
        # Valet parking available exception.
        # Corresponds to the JSON property `valetParkingAvailableException`
        # @return [String]
        attr_accessor :valet_parking_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @electric_car_charging_stations = args[:electric_car_charging_stations] if args.key?(:electric_car_charging_stations)
          @electric_car_charging_stations_exception = args[:electric_car_charging_stations_exception] if args.key?(:electric_car_charging_stations_exception)
          @free_parking = args[:free_parking] if args.key?(:free_parking)
          @free_parking_exception = args[:free_parking_exception] if args.key?(:free_parking_exception)
          @free_self_parking = args[:free_self_parking] if args.key?(:free_self_parking)
          @free_self_parking_exception = args[:free_self_parking_exception] if args.key?(:free_self_parking_exception)
          @free_valet_parking = args[:free_valet_parking] if args.key?(:free_valet_parking)
          @free_valet_parking_exception = args[:free_valet_parking_exception] if args.key?(:free_valet_parking_exception)
          @parking_available = args[:parking_available] if args.key?(:parking_available)
          @parking_available_exception = args[:parking_available_exception] if args.key?(:parking_available_exception)
          @self_parking_available = args[:self_parking_available] if args.key?(:self_parking_available)
          @self_parking_available_exception = args[:self_parking_available_exception] if args.key?(:self_parking_available_exception)
          @valet_parking_available = args[:valet_parking_available] if args.key?(:valet_parking_available)
          @valet_parking_available_exception = args[:valet_parking_available_exception] if args.key?(:valet_parking_available_exception)
        end
      end
      
      # Forms of payment accepted at the property.
      class PaymentOptions
        include Google::Apis::Core::Hashable
      
        # Cash. The hotel accepts payment by paper/coin currency.
        # Corresponds to the JSON property `cash`
        # @return [Boolean]
        attr_accessor :cash
        alias_method :cash?, :cash
      
        # Cash exception.
        # Corresponds to the JSON property `cashException`
        # @return [String]
        attr_accessor :cash_exception
      
        # Cheque. The hotel accepts a printed document issued by the guest's bank in the
        # guest's name as a form of payment.
        # Corresponds to the JSON property `cheque`
        # @return [Boolean]
        attr_accessor :cheque
        alias_method :cheque?, :cheque
      
        # Cheque exception.
        # Corresponds to the JSON property `chequeException`
        # @return [String]
        attr_accessor :cheque_exception
      
        # Credit card. The hotel accepts payment by a card issued by a bank or credit
        # card company. Also known as charge card, debit card, bank card, or charge
        # plate.
        # Corresponds to the JSON property `creditCard`
        # @return [Boolean]
        attr_accessor :credit_card
        alias_method :credit_card?, :credit_card
      
        # Credit card exception.
        # Corresponds to the JSON property `creditCardException`
        # @return [String]
        attr_accessor :credit_card_exception
      
        # Debit card. The hotel accepts a bank-issued card that immediately deducts the
        # charged funds from the guest's bank account upon processing.
        # Corresponds to the JSON property `debitCard`
        # @return [Boolean]
        attr_accessor :debit_card
        alias_method :debit_card?, :debit_card
      
        # Debit card exception.
        # Corresponds to the JSON property `debitCardException`
        # @return [String]
        attr_accessor :debit_card_exception
      
        # Mobile nfc. The hotel has the compatible computer hardware terminal that reads
        # and charges a payment app on the guest's smartphone without requiring the two
        # devices to make physical contact. Also known as Apple Pay, Google Pay, Samsung
        # Pay.
        # Corresponds to the JSON property `mobileNfc`
        # @return [Boolean]
        attr_accessor :mobile_nfc
        alias_method :mobile_nfc?, :mobile_nfc
      
        # Mobile nfc exception.
        # Corresponds to the JSON property `mobileNfcException`
        # @return [String]
        attr_accessor :mobile_nfc_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cash = args[:cash] if args.key?(:cash)
          @cash_exception = args[:cash_exception] if args.key?(:cash_exception)
          @cheque = args[:cheque] if args.key?(:cheque)
          @cheque_exception = args[:cheque_exception] if args.key?(:cheque_exception)
          @credit_card = args[:credit_card] if args.key?(:credit_card)
          @credit_card_exception = args[:credit_card_exception] if args.key?(:credit_card_exception)
          @debit_card = args[:debit_card] if args.key?(:debit_card)
          @debit_card_exception = args[:debit_card_exception] if args.key?(:debit_card_exception)
          @mobile_nfc = args[:mobile_nfc] if args.key?(:mobile_nfc)
          @mobile_nfc_exception = args[:mobile_nfc_exception] if args.key?(:mobile_nfc_exception)
        end
      end
      
      # Personal protection measures implemented by the hotel during COVID-19.
      class PersonalProtection
        include Google::Apis::Core::Hashable
      
        # Hand-sanitizer and/or sanitizing wipes are offered in common areas.
        # Corresponds to the JSON property `commonAreasOfferSanitizingItems`
        # @return [Boolean]
        attr_accessor :common_areas_offer_sanitizing_items
        alias_method :common_areas_offer_sanitizing_items?, :common_areas_offer_sanitizing_items
      
        # Common areas offer sanitizing items exception.
        # Corresponds to the JSON property `commonAreasOfferSanitizingItemsException`
        # @return [String]
        attr_accessor :common_areas_offer_sanitizing_items_exception
      
        # Masks required on the property.
        # Corresponds to the JSON property `faceMaskRequired`
        # @return [Boolean]
        attr_accessor :face_mask_required
        alias_method :face_mask_required?, :face_mask_required
      
        # Face mask required exception.
        # Corresponds to the JSON property `faceMaskRequiredException`
        # @return [String]
        attr_accessor :face_mask_required_exception
      
        # In-room hygiene kits with masks, hand sanitizer, and/or antibacterial wipes.
        # Corresponds to the JSON property `guestRoomHygieneKitsAvailable`
        # @return [Boolean]
        attr_accessor :guest_room_hygiene_kits_available
        alias_method :guest_room_hygiene_kits_available?, :guest_room_hygiene_kits_available
      
        # Guest room hygiene kits available exception.
        # Corresponds to the JSON property `guestRoomHygieneKitsAvailableException`
        # @return [String]
        attr_accessor :guest_room_hygiene_kits_available_exception
      
        # Masks and/or gloves available for guests.
        # Corresponds to the JSON property `protectiveEquipmentAvailable`
        # @return [Boolean]
        attr_accessor :protective_equipment_available
        alias_method :protective_equipment_available?, :protective_equipment_available
      
        # Protective equipment available exception.
        # Corresponds to the JSON property `protectiveEquipmentAvailableException`
        # @return [String]
        attr_accessor :protective_equipment_available_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_areas_offer_sanitizing_items = args[:common_areas_offer_sanitizing_items] if args.key?(:common_areas_offer_sanitizing_items)
          @common_areas_offer_sanitizing_items_exception = args[:common_areas_offer_sanitizing_items_exception] if args.key?(:common_areas_offer_sanitizing_items_exception)
          @face_mask_required = args[:face_mask_required] if args.key?(:face_mask_required)
          @face_mask_required_exception = args[:face_mask_required_exception] if args.key?(:face_mask_required_exception)
          @guest_room_hygiene_kits_available = args[:guest_room_hygiene_kits_available] if args.key?(:guest_room_hygiene_kits_available)
          @guest_room_hygiene_kits_available_exception = args[:guest_room_hygiene_kits_available_exception] if args.key?(:guest_room_hygiene_kits_available_exception)
          @protective_equipment_available = args[:protective_equipment_available] if args.key?(:protective_equipment_available)
          @protective_equipment_available_exception = args[:protective_equipment_available_exception] if args.key?(:protective_equipment_available_exception)
        end
      end
      
      # Policies regarding guest-owned animals.
      class Pets
        include Google::Apis::Core::Hashable
      
        # Cats allowed. Domesticated felines are permitted at the property and allowed
        # to stay in the guest room of their owner. May or may not require a fee.
        # Corresponds to the JSON property `catsAllowed`
        # @return [Boolean]
        attr_accessor :cats_allowed
        alias_method :cats_allowed?, :cats_allowed
      
        # Cats allowed exception.
        # Corresponds to the JSON property `catsAllowedException`
        # @return [String]
        attr_accessor :cats_allowed_exception
      
        # Dogs allowed. Domesticated canines are permitted at the property and allowed
        # to stay in the guest room of their owner. May or may not require a fee.
        # Corresponds to the JSON property `dogsAllowed`
        # @return [Boolean]
        attr_accessor :dogs_allowed
        alias_method :dogs_allowed?, :dogs_allowed
      
        # Dogs allowed exception.
        # Corresponds to the JSON property `dogsAllowedException`
        # @return [String]
        attr_accessor :dogs_allowed_exception
      
        # Pets allowed. Household animals are allowed at the property and in the
        # specific guest room of their owner. May or may not include dogs, cats,
        # reptiles and/or fish. May or may not require a fee. Service animals are not
        # considered to be pets, so not governed by this policy.
        # Corresponds to the JSON property `petsAllowed`
        # @return [Boolean]
        attr_accessor :pets_allowed
        alias_method :pets_allowed?, :pets_allowed
      
        # Pets allowed exception.
        # Corresponds to the JSON property `petsAllowedException`
        # @return [String]
        attr_accessor :pets_allowed_exception
      
        # Pets allowed free. Household animals are allowed at the property and in the
        # specific guest room of their owner for free. May or may not include dogs, cats,
        # reptiles, and/or fish.
        # Corresponds to the JSON property `petsAllowedFree`
        # @return [Boolean]
        attr_accessor :pets_allowed_free
        alias_method :pets_allowed_free?, :pets_allowed_free
      
        # Pets allowed free exception.
        # Corresponds to the JSON property `petsAllowedFreeException`
        # @return [String]
        attr_accessor :pets_allowed_free_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cats_allowed = args[:cats_allowed] if args.key?(:cats_allowed)
          @cats_allowed_exception = args[:cats_allowed_exception] if args.key?(:cats_allowed_exception)
          @dogs_allowed = args[:dogs_allowed] if args.key?(:dogs_allowed)
          @dogs_allowed_exception = args[:dogs_allowed_exception] if args.key?(:dogs_allowed_exception)
          @pets_allowed = args[:pets_allowed] if args.key?(:pets_allowed)
          @pets_allowed_exception = args[:pets_allowed_exception] if args.key?(:pets_allowed_exception)
          @pets_allowed_free = args[:pets_allowed_free] if args.key?(:pets_allowed_free)
          @pets_allowed_free_exception = args[:pets_allowed_free_exception] if args.key?(:pets_allowed_free_exception)
        end
      end
      
      # Input for PHONE_CALL/SMS verification.
      class PhoneInput
        include Google::Apis::Core::Hashable
      
        # The phone number that should be called or be sent SMS to. It must be one of
        # the phone numbers in the eligible options.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Display Data for verifications through phone, e.g. phone call, sms.
      class PhoneVerificationData
        include Google::Apis::Core::Hashable
      
        # Phone number that the PIN will be sent to.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Physical distancing measures implemented by the hotel during COVID-19.
      class PhysicalDistancing
        include Google::Apis::Core::Hashable
      
        # Common areas arranged to maintain physical distancing.
        # Corresponds to the JSON property `commonAreasPhysicalDistancingArranged`
        # @return [Boolean]
        attr_accessor :common_areas_physical_distancing_arranged
        alias_method :common_areas_physical_distancing_arranged?, :common_areas_physical_distancing_arranged
      
        # Common areas physical distancing arranged exception.
        # Corresponds to the JSON property `commonAreasPhysicalDistancingArrangedException`
        # @return [String]
        attr_accessor :common_areas_physical_distancing_arranged_exception
      
        # Physical distancing required.
        # Corresponds to the JSON property `physicalDistancingRequired`
        # @return [Boolean]
        attr_accessor :physical_distancing_required
        alias_method :physical_distancing_required?, :physical_distancing_required
      
        # Physical distancing required exception.
        # Corresponds to the JSON property `physicalDistancingRequiredException`
        # @return [String]
        attr_accessor :physical_distancing_required_exception
      
        # Safety dividers at front desk and other locations.
        # Corresponds to the JSON property `safetyDividers`
        # @return [Boolean]
        attr_accessor :safety_dividers
        alias_method :safety_dividers?, :safety_dividers
      
        # Safety dividers exception.
        # Corresponds to the JSON property `safetyDividersException`
        # @return [String]
        attr_accessor :safety_dividers_exception
      
        # Guest occupancy limited within shared facilities.
        # Corresponds to the JSON property `sharedAreasLimitedOccupancy`
        # @return [Boolean]
        attr_accessor :shared_areas_limited_occupancy
        alias_method :shared_areas_limited_occupancy?, :shared_areas_limited_occupancy
      
        # Shared areas limited occupancy exception.
        # Corresponds to the JSON property `sharedAreasLimitedOccupancyException`
        # @return [String]
        attr_accessor :shared_areas_limited_occupancy_exception
      
        # Private spaces designated in spa and wellness areas.
        # Corresponds to the JSON property `wellnessAreasHavePrivateSpaces`
        # @return [Boolean]
        attr_accessor :wellness_areas_have_private_spaces
        alias_method :wellness_areas_have_private_spaces?, :wellness_areas_have_private_spaces
      
        # Wellness areas have private spaces exception.
        # Corresponds to the JSON property `wellnessAreasHavePrivateSpacesException`
        # @return [String]
        attr_accessor :wellness_areas_have_private_spaces_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_areas_physical_distancing_arranged = args[:common_areas_physical_distancing_arranged] if args.key?(:common_areas_physical_distancing_arranged)
          @common_areas_physical_distancing_arranged_exception = args[:common_areas_physical_distancing_arranged_exception] if args.key?(:common_areas_physical_distancing_arranged_exception)
          @physical_distancing_required = args[:physical_distancing_required] if args.key?(:physical_distancing_required)
          @physical_distancing_required_exception = args[:physical_distancing_required_exception] if args.key?(:physical_distancing_required_exception)
          @safety_dividers = args[:safety_dividers] if args.key?(:safety_dividers)
          @safety_dividers_exception = args[:safety_dividers_exception] if args.key?(:safety_dividers_exception)
          @shared_areas_limited_occupancy = args[:shared_areas_limited_occupancy] if args.key?(:shared_areas_limited_occupancy)
          @shared_areas_limited_occupancy_exception = args[:shared_areas_limited_occupancy_exception] if args.key?(:shared_areas_limited_occupancy_exception)
          @wellness_areas_have_private_spaces = args[:wellness_areas_have_private_spaces] if args.key?(:wellness_areas_have_private_spaces)
          @wellness_areas_have_private_spaces_exception = args[:wellness_areas_have_private_spaces_exception] if args.key?(:wellness_areas_have_private_spaces_exception)
        end
      end
      
      # Defines an area that's represented by a place ID.
      class PlaceInfo
        include Google::Apis::Core::Hashable
      
        # The localized name of the place. For example, `Scottsdale, AZ`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the place. Must correspond to a [region.] (https://developers.google.
        # com/places/web-service/supported_types#table3)
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @place_id = args[:place_id] if args.key?(:place_id)
        end
      end
      
      # Defines the union of areas represented by a set of places.
      class Places
        include Google::Apis::Core::Hashable
      
        # The areas represented by place IDs. Limited to a maximum of 20 places.
        # Corresponds to the JSON property `placeInfos`
        # @return [Array<Google::Apis::MybusinessV4::PlaceInfo>]
        attr_accessor :place_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_infos = args[:place_infos] if args.key?(:place_infos)
        end
      end
      
      # A radius around a particular point (latitude/longitude).
      class PointRadius
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
        attr_accessor :latlng
      
        # The distance in kilometers of the area around the point.
        # Corresponds to the JSON property `radiusKm`
        # @return [Float]
        attr_accessor :radius_km
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latlng = args[:latlng] if args.key?(:latlng)
          @radius_km = args[:radius_km] if args.key?(:radius_km)
        end
      end
      
      # Property rules that impact guests.
      class Policies
        include Google::Apis::Core::Hashable
      
        # All inclusive available. The hotel offers a rate option that includes the cost
        # of the room, meals, activities, and other amenities that might otherwise be
        # charged separately.
        # Corresponds to the JSON property `allInclusiveAvailable`
        # @return [Boolean]
        attr_accessor :all_inclusive_available
        alias_method :all_inclusive_available?, :all_inclusive_available
      
        # All inclusive available exception.
        # Corresponds to the JSON property `allInclusiveAvailableException`
        # @return [String]
        attr_accessor :all_inclusive_available_exception
      
        # All inclusive only. The only rate option offered by the hotel is a rate that
        # includes the cost of the room, meals, activities and other amenities that
        # might otherwise be charged separately.
        # Corresponds to the JSON property `allInclusiveOnly`
        # @return [Boolean]
        attr_accessor :all_inclusive_only
        alias_method :all_inclusive_only?, :all_inclusive_only
      
        # All inclusive only exception.
        # Corresponds to the JSON property `allInclusiveOnlyException`
        # @return [String]
        attr_accessor :all_inclusive_only_exception
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `checkinTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :checkin_time
      
        # Check-in time exception.
        # Corresponds to the JSON property `checkinTimeException`
        # @return [String]
        attr_accessor :checkin_time_exception
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `checkoutTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :checkout_time
      
        # Check-out time exception.
        # Corresponds to the JSON property `checkoutTimeException`
        # @return [String]
        attr_accessor :checkout_time_exception
      
        # Kids stay free. The children of guests are allowed to stay in the room/suite
        # of a parent or adult without an additional fee. The policy may or may not
        # stipulate a limit of the child's age or the overall number of children allowed.
        # Corresponds to the JSON property `kidsStayFree`
        # @return [Boolean]
        attr_accessor :kids_stay_free
        alias_method :kids_stay_free?, :kids_stay_free
      
        # Kids stay free exception.
        # Corresponds to the JSON property `kidsStayFreeException`
        # @return [String]
        attr_accessor :kids_stay_free_exception
      
        # Max child age. The hotel allows children up to a certain age to stay in the
        # room/suite of a parent or adult without an additional fee.
        # Corresponds to the JSON property `maxChildAge`
        # @return [Fixnum]
        attr_accessor :max_child_age
      
        # Max child age exception.
        # Corresponds to the JSON property `maxChildAgeException`
        # @return [String]
        attr_accessor :max_child_age_exception
      
        # Max kids stay free count. The hotel allows a specific, defined number of
        # children to stay in the room/suite of a parent or adult without an additional
        # fee.
        # Corresponds to the JSON property `maxKidsStayFreeCount`
        # @return [Fixnum]
        attr_accessor :max_kids_stay_free_count
      
        # Max kids stay free count exception.
        # Corresponds to the JSON property `maxKidsStayFreeCountException`
        # @return [String]
        attr_accessor :max_kids_stay_free_count_exception
      
        # Forms of payment accepted at the property.
        # Corresponds to the JSON property `paymentOptions`
        # @return [Google::Apis::MybusinessV4::PaymentOptions]
        attr_accessor :payment_options
      
        # Smoke free property. Smoking is not allowed inside the building, on balconies,
        # or in outside spaces. Hotels that offer a designated area for guests to smoke
        # are not considered smoke-free properties.
        # Corresponds to the JSON property `smokeFreeProperty`
        # @return [Boolean]
        attr_accessor :smoke_free_property
        alias_method :smoke_free_property?, :smoke_free_property
      
        # Smoke free property exception.
        # Corresponds to the JSON property `smokeFreePropertyException`
        # @return [String]
        attr_accessor :smoke_free_property_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_inclusive_available = args[:all_inclusive_available] if args.key?(:all_inclusive_available)
          @all_inclusive_available_exception = args[:all_inclusive_available_exception] if args.key?(:all_inclusive_available_exception)
          @all_inclusive_only = args[:all_inclusive_only] if args.key?(:all_inclusive_only)
          @all_inclusive_only_exception = args[:all_inclusive_only_exception] if args.key?(:all_inclusive_only_exception)
          @checkin_time = args[:checkin_time] if args.key?(:checkin_time)
          @checkin_time_exception = args[:checkin_time_exception] if args.key?(:checkin_time_exception)
          @checkout_time = args[:checkout_time] if args.key?(:checkout_time)
          @checkout_time_exception = args[:checkout_time_exception] if args.key?(:checkout_time_exception)
          @kids_stay_free = args[:kids_stay_free] if args.key?(:kids_stay_free)
          @kids_stay_free_exception = args[:kids_stay_free_exception] if args.key?(:kids_stay_free_exception)
          @max_child_age = args[:max_child_age] if args.key?(:max_child_age)
          @max_child_age_exception = args[:max_child_age_exception] if args.key?(:max_child_age_exception)
          @max_kids_stay_free_count = args[:max_kids_stay_free_count] if args.key?(:max_kids_stay_free_count)
          @max_kids_stay_free_count_exception = args[:max_kids_stay_free_count_exception] if args.key?(:max_kids_stay_free_count_exception)
          @payment_options = args[:payment_options] if args.key?(:payment_options)
          @smoke_free_property = args[:smoke_free_property] if args.key?(:smoke_free_property)
          @smoke_free_property_exception = args[:smoke_free_property_exception] if args.key?(:smoke_free_property_exception)
        end
      end
      
      # Swimming pool or recreational water facilities available at the hotel.
      class Pools
        include Google::Apis::Core::Hashable
      
        # Adult pool. A pool restricted for use by adults only. Can be indoors or
        # outdoors.
        # Corresponds to the JSON property `adultPool`
        # @return [Boolean]
        attr_accessor :adult_pool
        alias_method :adult_pool?, :adult_pool
      
        # Adult pool exception.
        # Corresponds to the JSON property `adultPoolException`
        # @return [String]
        attr_accessor :adult_pool_exception
      
        # Hot tub. A man-made pool containing bubbling water maintained at a higher
        # temperature and circulated by aerating jets for the purpose of soaking,
        # relaxation and hydrotherapy. Can be indoors or outdoors. Not used for active
        # swimming. Also known as Jacuzzi. Hot tub must be in a common area where all
        # guests can access it. Does not apply to room-specific hot tubs that are only
        # accessible to guest occupying that room.
        # Corresponds to the JSON property `hotTub`
        # @return [Boolean]
        attr_accessor :hot_tub
        alias_method :hot_tub?, :hot_tub
      
        # Hot tub exception.
        # Corresponds to the JSON property `hotTubException`
        # @return [String]
        attr_accessor :hot_tub_exception
      
        # Indoor pool. A pool located inside the hotel and available for guests to use
        # for swimming and/or soaking. Use may or may not be restricted to adults and/or
        # children.
        # Corresponds to the JSON property `indoorPool`
        # @return [Boolean]
        attr_accessor :indoor_pool
        alias_method :indoor_pool?, :indoor_pool
      
        # Indoor pool exception.
        # Corresponds to the JSON property `indoorPoolException`
        # @return [String]
        attr_accessor :indoor_pool_exception
      
        # Indoor pools count. The sum of all indoor pools at the hotel.
        # Corresponds to the JSON property `indoorPoolsCount`
        # @return [Fixnum]
        attr_accessor :indoor_pools_count
      
        # Indoor pools count exception.
        # Corresponds to the JSON property `indoorPoolsCountException`
        # @return [String]
        attr_accessor :indoor_pools_count_exception
      
        # Lazy river. A man-made pool or several interconnected recreational pools built
        # to mimic the shape and current of a winding river where guests float in the
        # water on inflated rubber tubes. Can be indoors or outdoors.
        # Corresponds to the JSON property `lazyRiver`
        # @return [Boolean]
        attr_accessor :lazy_river
        alias_method :lazy_river?, :lazy_river
      
        # Lazy river exception.
        # Corresponds to the JSON property `lazyRiverException`
        # @return [String]
        attr_accessor :lazy_river_exception
      
        # Lifeguard. A trained member of the hotel staff stationed by the hotel's indoor
        # or outdoor swimming area and responsible for the safety of swimming guests.
        # Corresponds to the JSON property `lifeguard`
        # @return [Boolean]
        attr_accessor :lifeguard
        alias_method :lifeguard?, :lifeguard
      
        # Lifeguard exception.
        # Corresponds to the JSON property `lifeguardException`
        # @return [String]
        attr_accessor :lifeguard_exception
      
        # Outdoor pool. A pool located outside on the grounds of the hotel and available
        # for guests to use for swimming, soaking or recreation. Use may or may not be
        # restricted to adults and/or children.
        # Corresponds to the JSON property `outdoorPool`
        # @return [Boolean]
        attr_accessor :outdoor_pool
        alias_method :outdoor_pool?, :outdoor_pool
      
        # Outdoor pool exception.
        # Corresponds to the JSON property `outdoorPoolException`
        # @return [String]
        attr_accessor :outdoor_pool_exception
      
        # Outdoor pools count. The sum of all outdoor pools at the hotel.
        # Corresponds to the JSON property `outdoorPoolsCount`
        # @return [Fixnum]
        attr_accessor :outdoor_pools_count
      
        # Outdoor pools count exception.
        # Corresponds to the JSON property `outdoorPoolsCountException`
        # @return [String]
        attr_accessor :outdoor_pools_count_exception
      
        # Pool. The presence of a pool, either indoors or outdoors, for guests to use
        # for swimming and/or soaking. Use may or may not be restricted to adults and/or
        # children.
        # Corresponds to the JSON property `pool`
        # @return [Boolean]
        attr_accessor :pool
        alias_method :pool?, :pool
      
        # Pool exception.
        # Corresponds to the JSON property `poolException`
        # @return [String]
        attr_accessor :pool_exception
      
        # Pools count. The sum of all pools at the hotel.
        # Corresponds to the JSON property `poolsCount`
        # @return [Fixnum]
        attr_accessor :pools_count
      
        # Pools count exception.
        # Corresponds to the JSON property `poolsCountException`
        # @return [String]
        attr_accessor :pools_count_exception
      
        # Wading pool. A shallow pool designed for small children to play in. Can be
        # indoors or outdoors. Also known as kiddie pool.
        # Corresponds to the JSON property `wadingPool`
        # @return [Boolean]
        attr_accessor :wading_pool
        alias_method :wading_pool?, :wading_pool
      
        # Wading pool exception.
        # Corresponds to the JSON property `wadingPoolException`
        # @return [String]
        attr_accessor :wading_pool_exception
      
        # Water park. An aquatic recreation area with a large pool or series of pools
        # that has features such as a water slide or tube, wavepool, fountains, rope
        # swings, and/or obstacle course. Can be indoors or outdoors. Also known as
        # adventure pool.
        # Corresponds to the JSON property `waterPark`
        # @return [Boolean]
        attr_accessor :water_park
        alias_method :water_park?, :water_park
      
        # Water park exception.
        # Corresponds to the JSON property `waterParkException`
        # @return [String]
        attr_accessor :water_park_exception
      
        # Waterslide. A continuously wetted chute positioned by an indoor or outdoor
        # pool which people slide down into the water.
        # Corresponds to the JSON property `waterslide`
        # @return [Boolean]
        attr_accessor :waterslide
        alias_method :waterslide?, :waterslide
      
        # Waterslide exception.
        # Corresponds to the JSON property `waterslideException`
        # @return [String]
        attr_accessor :waterslide_exception
      
        # Wave pool. A large indoor or outdoor pool with a machine that produces water
        # currents to mimic the ocean's crests.
        # Corresponds to the JSON property `wavePool`
        # @return [Boolean]
        attr_accessor :wave_pool
        alias_method :wave_pool?, :wave_pool
      
        # Wave pool exception.
        # Corresponds to the JSON property `wavePoolException`
        # @return [String]
        attr_accessor :wave_pool_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult_pool = args[:adult_pool] if args.key?(:adult_pool)
          @adult_pool_exception = args[:adult_pool_exception] if args.key?(:adult_pool_exception)
          @hot_tub = args[:hot_tub] if args.key?(:hot_tub)
          @hot_tub_exception = args[:hot_tub_exception] if args.key?(:hot_tub_exception)
          @indoor_pool = args[:indoor_pool] if args.key?(:indoor_pool)
          @indoor_pool_exception = args[:indoor_pool_exception] if args.key?(:indoor_pool_exception)
          @indoor_pools_count = args[:indoor_pools_count] if args.key?(:indoor_pools_count)
          @indoor_pools_count_exception = args[:indoor_pools_count_exception] if args.key?(:indoor_pools_count_exception)
          @lazy_river = args[:lazy_river] if args.key?(:lazy_river)
          @lazy_river_exception = args[:lazy_river_exception] if args.key?(:lazy_river_exception)
          @lifeguard = args[:lifeguard] if args.key?(:lifeguard)
          @lifeguard_exception = args[:lifeguard_exception] if args.key?(:lifeguard_exception)
          @outdoor_pool = args[:outdoor_pool] if args.key?(:outdoor_pool)
          @outdoor_pool_exception = args[:outdoor_pool_exception] if args.key?(:outdoor_pool_exception)
          @outdoor_pools_count = args[:outdoor_pools_count] if args.key?(:outdoor_pools_count)
          @outdoor_pools_count_exception = args[:outdoor_pools_count_exception] if args.key?(:outdoor_pools_count_exception)
          @pool = args[:pool] if args.key?(:pool)
          @pool_exception = args[:pool_exception] if args.key?(:pool_exception)
          @pools_count = args[:pools_count] if args.key?(:pools_count)
          @pools_count_exception = args[:pools_count_exception] if args.key?(:pools_count_exception)
          @wading_pool = args[:wading_pool] if args.key?(:wading_pool)
          @wading_pool_exception = args[:wading_pool_exception] if args.key?(:wading_pool_exception)
          @water_park = args[:water_park] if args.key?(:water_park)
          @water_park_exception = args[:water_park_exception] if args.key?(:water_park_exception)
          @waterslide = args[:waterslide] if args.key?(:waterslide)
          @waterslide_exception = args[:waterslide_exception] if args.key?(:waterslide_exception)
          @wave_pool = args[:wave_pool] if args.key?(:wave_pool)
          @wave_pool_exception = args[:wave_pool_exception] if args.key?(:wave_pool_exception)
        end
      end
      
      # Serving portion size of a food dish.
      class PortionSize
        include Google::Apis::Core::Hashable
      
        # Required. Number of the portion.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The repeated name_info field is for the unit in multiple languages.
        # Corresponds to the JSON property `unit`
        # @return [Array<Google::Apis::MybusinessV4::MenuLabel>]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quantity = args[:quantity] if args.key?(:quantity)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an i18n-ready address widget such as https://
      # github.com/google/libaddressinput) - Users should not be presented with UI
      # elements for input or editing of fields outside countries where that field is
      # used. For more guidance on how to use this schema, please see: https://support.
      # google.com/business/answer/6397478
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See http://
        # cldr.unicode.org/ and http://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # A list of item price information. Price lists are structured as one or more
      # price lists, each containing one or more sections with one or more items. For
      # example, food price lists may represent breakfast/lunch/dinner menus, with
      # sections for burgers/steak/seafood.
      class PriceList
        include Google::Apis::Core::Hashable
      
        # Required. Language-tagged labels for the price list.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Required. ID for the price list. Price list, section, and item IDs cannot be
        # duplicated within this Location.
        # Corresponds to the JSON property `priceListId`
        # @return [String]
        attr_accessor :price_list_id
      
        # Required. Sections for this price list. Each price list must contain at least
        # one section.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::MybusinessV4::Section>]
        attr_accessor :sections
      
        # Optional source URL of where the price list was retrieved from. For example,
        # this could be the URL of the page that was automatically scraped to populate
        # the menu information.
        # Corresponds to the JSON property `sourceUrl`
        # @return [String]
        attr_accessor :source_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @price_list_id = args[:price_list_id] if args.key?(:price_list_id)
          @sections = args[:sections] if args.key?(:sections)
          @source_url = args[:source_url] if args.key?(:source_url)
        end
      end
      
      # All information pertaining to the location's profile.
      class Profile
        include Google::Apis::Core::Hashable
      
        # Description of the location in your own voice, not editable by anyone else.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # General factual information about the property's physical structure and
      # important dates.
      class Property
        include Google::Apis::Core::Hashable
      
        # Built year. The year that construction of the property was completed.
        # Corresponds to the JSON property `builtYear`
        # @return [Fixnum]
        attr_accessor :built_year
      
        # Built year exception.
        # Corresponds to the JSON property `builtYearException`
        # @return [String]
        attr_accessor :built_year_exception
      
        # Floors count. The number of stories the building has from the ground floor to
        # the top floor that are accessible to guests.
        # Corresponds to the JSON property `floorsCount`
        # @return [Fixnum]
        attr_accessor :floors_count
      
        # Floors count exception.
        # Corresponds to the JSON property `floorsCountException`
        # @return [String]
        attr_accessor :floors_count_exception
      
        # Last renovated year. The year when the most recent renovation of the property
        # was completed. Renovation may include all or any combination of the following:
        # the units, the public spaces, the exterior, or the interior.
        # Corresponds to the JSON property `lastRenovatedYear`
        # @return [Fixnum]
        attr_accessor :last_renovated_year
      
        # Last renovated year exception.
        # Corresponds to the JSON property `lastRenovatedYearException`
        # @return [String]
        attr_accessor :last_renovated_year_exception
      
        # Rooms count. The total number of rooms and suites bookable by guests for an
        # overnight stay. Does not include event space, public spaces, conference rooms,
        # fitness rooms, business centers, spa, salon, restaurants/bars, or shops.
        # Corresponds to the JSON property `roomsCount`
        # @return [Fixnum]
        attr_accessor :rooms_count
      
        # Rooms count exception.
        # Corresponds to the JSON property `roomsCountException`
        # @return [String]
        attr_accessor :rooms_count_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @built_year = args[:built_year] if args.key?(:built_year)
          @built_year_exception = args[:built_year_exception] if args.key?(:built_year_exception)
          @floors_count = args[:floors_count] if args.key?(:floors_count)
          @floors_count_exception = args[:floors_count_exception] if args.key?(:floors_count_exception)
          @last_renovated_year = args[:last_renovated_year] if args.key?(:last_renovated_year)
          @last_renovated_year_exception = args[:last_renovated_year_exception] if args.key?(:last_renovated_year_exception)
          @rooms_count = args[:rooms_count] if args.key?(:rooms_count)
          @rooms_count_exception = args[:rooms_count_exception] if args.key?(:rooms_count_exception)
        end
      end
      
      # Represents a single question and some of its answers.
      class Question
        include Google::Apis::Core::Hashable
      
        # Represents the author of a question or answer
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::MybusinessV4::Author]
        attr_accessor :author
      
        # Output only. The timestamp for when the question was written.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique name for the question. accounts/*/locations/*/
        # questions/*
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The text of the question. It should contain at least three words and the total
        # length should be greater than or equal to 10 characters. The maximum length is
        # 4096 characters.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. A list of answers to the question, sorted by upvotes. This may
        # not be a complete list of answers depending on the request parameters (
        # answers_per_question)
        # Corresponds to the JSON property `topAnswers`
        # @return [Array<Google::Apis::MybusinessV4::Answer>]
        attr_accessor :top_answers
      
        # Output only. The total number of answers posted for this question.
        # Corresponds to the JSON property `totalAnswerCount`
        # @return [Fixnum]
        attr_accessor :total_answer_count
      
        # Output only. The timestamp for when the question was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The number of upvotes for the question.
        # Corresponds to the JSON property `upvoteCount`
        # @return [Fixnum]
        attr_accessor :upvote_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @text = args[:text] if args.key?(:text)
          @top_answers = args[:top_answers] if args.key?(:top_answers)
          @total_answer_count = args[:total_answer_count] if args.key?(:total_answer_count)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upvote_count = args[:upvote_count] if args.key?(:upvote_count)
        end
      end
      
      # A region with its associated request count.
      class RegionCount
        include Google::Apis::Core::Hashable
      
        # Number of driving-direction requests from this region.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Human-readable label for the region.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the WGS84 standard. Values must be
        # within normalized ranges.
        # Corresponds to the JSON property `latlng`
        # @return [Google::Apis::MybusinessV4::LatLng]
        attr_accessor :latlng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @label = args[:label] if args.key?(:label)
          @latlng = args[:latlng] if args.key?(:latlng)
        end
      end
      
      # Information of all parent and children locations related to this one.
      class RelationshipData
        include Google::Apis::Core::Hashable
      
        # The resource name of the Chain that this location is member of. How to find
        # Chain ID
        # Corresponds to the JSON property `parentChain`
        # @return [String]
        attr_accessor :parent_chain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent_chain = args[:parent_chain] if args.key?(:parent_chain)
        end
      end
      
      # Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of
      # two lists of value IDs: those that are set (true) and those that are unset (
      # false). Values absent are considered unknown. At least one value must be
      # specified.
      class RepeatedEnumAttributeValue
        include Google::Apis::Core::Hashable
      
        # Enum values that are set.
        # Corresponds to the JSON property `setValues`
        # @return [Array<String>]
        attr_accessor :set_values
      
        # Enum values that are unset.
        # Corresponds to the JSON property `unsetValues`
        # @return [Array<String>]
        attr_accessor :unset_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @set_values = args[:set_values] if args.key?(:set_values)
          @unset_values = args[:unset_values] if args.key?(:unset_values)
        end
      end
      
      # Request message for reporting a GoogleLocation.
      class ReportGoogleLocationRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the location group that this Google Location is
        # being reported for, in the format `accounts/`account_id``.
        # Corresponds to the JSON property `locationGroupName`
        # @return [String]
        attr_accessor :location_group_name
      
        # The reason for which the user is reporting this location when the issue is
        # with the location itself.
        # Corresponds to the JSON property `reportReasonBadLocation`
        # @return [String]
        attr_accessor :report_reason_bad_location
      
        # The reason for which the user is reporting this location when the issue is
        # with the recommendation. This report is useful if the location has been
        # recommended to the Business Profile account.
        # Corresponds to the JSON property `reportReasonBadRecommendation`
        # @return [String]
        attr_accessor :report_reason_bad_recommendation
      
        # Optional. A text entry for elaborating on the reason for which the user is
        # reporting this location. The maximum length is 512 characters.
        # Corresponds to the JSON property `reportReasonElaboration`
        # @return [String]
        attr_accessor :report_reason_elaboration
      
        # Optional. The BCP 47 code of language used in `report_reason_elaboration`.
        # Corresponds to the JSON property `reportReasonLanguageCode`
        # @return [String]
        attr_accessor :report_reason_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_group_name = args[:location_group_name] if args.key?(:location_group_name)
          @report_reason_bad_location = args[:report_reason_bad_location] if args.key?(:report_reason_bad_location)
          @report_reason_bad_recommendation = args[:report_reason_bad_recommendation] if args.key?(:report_reason_bad_recommendation)
          @report_reason_elaboration = args[:report_reason_elaboration] if args.key?(:report_reason_elaboration)
          @report_reason_language_code = args[:report_reason_language_code] if args.key?(:report_reason_language_code)
        end
      end
      
      # Request message for Insights.ReportLocalPostInsights
      class ReportLocalPostInsightsRequest
        include Google::Apis::Core::Hashable
      
        # A request for basic metric insights.
        # Corresponds to the JSON property `basicRequest`
        # @return [Google::Apis::MybusinessV4::BasicMetricsRequest]
        attr_accessor :basic_request
      
        # Required. The list of posts for which to fetch insights data. All posts have
        # to belong to the location whose name is specified in the `name` field.
        # Corresponds to the JSON property `localPostNames`
        # @return [Array<String>]
        attr_accessor :local_post_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_request = args[:basic_request] if args.key?(:basic_request)
          @local_post_names = args[:local_post_names] if args.key?(:local_post_names)
        end
      end
      
      # Response message for Insights.ReportLocalPostInsights
      class ReportLocalPostInsightsResponse
        include Google::Apis::Core::Hashable
      
        # One entry per requested post corresponding to this location.
        # Corresponds to the JSON property `localPostMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocalPostMetrics>]
        attr_accessor :local_post_metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Time zone (IANA timezone IDs, eg, 'Europe/London') of the location.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_post_metrics = args[:local_post_metrics] if args.key?(:local_post_metrics)
          @name = args[:name] if args.key?(:name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Request message for Insights.ReportLocationInsights.
      class ReportLocationInsightsRequest
        include Google::Apis::Core::Hashable
      
        # A request for basic metric insights.
        # Corresponds to the JSON property `basicRequest`
        # @return [Google::Apis::MybusinessV4::BasicMetricsRequest]
        attr_accessor :basic_request
      
        # A request for driving direction insights.
        # Corresponds to the JSON property `drivingDirectionsRequest`
        # @return [Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest]
        attr_accessor :driving_directions_request
      
        # A collection of locations to fetch insights for, specified by their names.
        # Corresponds to the JSON property `locationNames`
        # @return [Array<String>]
        attr_accessor :location_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_request = args[:basic_request] if args.key?(:basic_request)
          @driving_directions_request = args[:driving_directions_request] if args.key?(:driving_directions_request)
          @location_names = args[:location_names] if args.key?(:location_names)
        end
      end
      
      # Response message for `Insights.ReportLocationInsights`.
      class ReportLocationInsightsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of values for driving direction-related metrics.
        # Corresponds to the JSON property `locationDrivingDirectionMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics>]
        attr_accessor :location_driving_direction_metrics
      
        # A collection of metric values by location.
        # Corresponds to the JSON property `locationMetrics`
        # @return [Array<Google::Apis::MybusinessV4::LocationMetrics>]
        attr_accessor :location_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_driving_direction_metrics = args[:location_driving_direction_metrics] if args.key?(:location_driving_direction_metrics)
          @location_metrics = args[:location_metrics] if args.key?(:location_metrics)
        end
      end
      
      # Output only. Represents a review for a location.
      class Review
        include Google::Apis::Core::Hashable
      
        # The body of the review as plain text with markups.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The timestamp for when the review was written.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name. For Review it is of the form `accounts/`account_id`/
        # locations/`location_id`/reviews/`review_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The encrypted unique identifier.
        # Corresponds to the JSON property `reviewId`
        # @return [String]
        attr_accessor :review_id
      
        # Represents the location owner/manager's reply to a review.
        # Corresponds to the JSON property `reviewReply`
        # @return [Google::Apis::MybusinessV4::ReviewReply]
        attr_accessor :review_reply
      
        # Represents the author of the review.
        # Corresponds to the JSON property `reviewer`
        # @return [Google::Apis::MybusinessV4::Reviewer]
        attr_accessor :reviewer
      
        # The star rating of the review.
        # Corresponds to the JSON property `starRating`
        # @return [String]
        attr_accessor :star_rating
      
        # The timestamp for when the review was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @review_id = args[:review_id] if args.key?(:review_id)
          @review_reply = args[:review_reply] if args.key?(:review_reply)
          @reviewer = args[:reviewer] if args.key?(:reviewer)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the location owner/manager's reply to a review.
      class ReviewReply
        include Google::Apis::Core::Hashable
      
        # The body of the reply as plain text with markups. The maximum length is 4096
        # bytes.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Output only. The timestamp for when the reply was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the author of the review.
      class Reviewer
        include Google::Apis::Core::Hashable
      
        # The name of the reviewer. Only populated with the reviewer's real name if `
        # is_anonymous` is false.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether the reviewer has opted to remain anonymous.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # The profile photo link of the reviewer. Only populated if `is_anonymous` is
        # false.
        # Corresponds to the JSON property `profilePhotoUrl`
        # @return [String]
        attr_accessor :profile_photo_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
          @profile_photo_url = args[:profile_photo_url] if args.key?(:profile_photo_url)
        end
      end
      
      # Response message for Locations.SearchChains.
      class SearchChainsResponse
        include Google::Apis::Core::Hashable
      
        # Chains that match the queried chain_display_name in SearchChainsRequest. If
        # there are no matches, this field will be empty. Results are listed in order of
        # relevance.
        # Corresponds to the JSON property `chains`
        # @return [Array<Google::Apis::MybusinessV4::Chain>]
        attr_accessor :chains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chains = args[:chains] if args.key?(:chains)
        end
      end
      
      # Request message for GoogleLocations.SearchGoogleLocations.
      class SearchGoogleLocationsRequest
        include Google::Apis::Core::Hashable
      
        # A location. See the [help center article] (https://support.google.com/business/
        # answer/3038177) for a detailed description of these fields, or the [category
        # endpoint](/my-business/reference/rest/v4/categories) for a list of valid
        # business categories.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::MybusinessV4::Location]
        attr_accessor :location
      
        # Text query to search for. The search results from a query string will be less
        # accurate than if providing an exact location, but can provide more inexact
        # matches.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The number of matches to return. The default value is 3, with a maximum of 10.
        # Note that latency may increase if more are requested. There is no pagination.
        # Corresponds to the JSON property `resultCount`
        # @return [Fixnum]
        attr_accessor :result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @query = args[:query] if args.key?(:query)
          @result_count = args[:result_count] if args.key?(:result_count)
        end
      end
      
      # Response message for GoogleLocations.SearchGoogleLocations.
      class SearchGoogleLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A collection of GoogleLocations that are potential matches to the specified
        # request, listed in order from most to least accuracy.
        # Corresponds to the JSON property `googleLocations`
        # @return [Array<Google::Apis::MybusinessV4::GoogleLocation>]
        attr_accessor :google_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_locations = args[:google_locations] if args.key?(:google_locations)
        end
      end
      
      # A section of the price list containing one or more items.
      class Section
        include Google::Apis::Core::Hashable
      
        # Items that are contained within this section of the price list.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::MybusinessV4::Item>]
        attr_accessor :items
      
        # Required. Language-tagged labels for the section. We recommend that section
        # names and descriptions be 140 characters or less. At least one set of labels
        # is required.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::MybusinessV4::Label>]
        attr_accessor :labels
      
        # Required. ID for the section. Price list, section, and item IDs cannot be
        # duplicated within this Location.
        # Corresponds to the JSON property `sectionId`
        # @return [String]
        attr_accessor :section_id
      
        # Optional. Type of the current price list section. Default value is FOOD.
        # Corresponds to the JSON property `sectionType`
        # @return [String]
        attr_accessor :section_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @labels = args[:labels] if args.key?(:labels)
          @section_id = args[:section_id] if args.key?(:section_id)
          @section_type = args[:section_type] if args.key?(:section_type)
        end
      end
      
      # Service area businesses provide their service at the customer's location (for
      # example, a locksmith or plumber).
      class ServiceAreaBusiness
        include Google::Apis::Core::Hashable
      
        # Indicates the type of the service area business.
        # Corresponds to the JSON property `businessType`
        # @return [String]
        attr_accessor :business_type
      
        # Defines the union of areas represented by a set of places.
        # Corresponds to the JSON property `places`
        # @return [Google::Apis::MybusinessV4::Places]
        attr_accessor :places
      
        # A radius around a particular point (latitude/longitude).
        # Corresponds to the JSON property `radius`
        # @return [Google::Apis::MybusinessV4::PointRadius]
        attr_accessor :radius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_type = args[:business_type] if args.key?(:business_type)
          @places = args[:places] if args.key?(:places)
          @radius = args[:radius] if args.key?(:radius)
        end
      end
      
      # Additional data for service business verification.
      class ServiceBusinessContext
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an i18n-ready address widget such as https://
        # github.com/google/libaddressinput) - Users should not be presented with UI
        # elements for input or editing of fields outside countries where that field is
        # used. For more guidance on how to use this schema, please see: https://support.
        # google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::MybusinessV4::PostalAddress]
        attr_accessor :address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
        end
      end
      
      # A message that describes a single service item. It is used to describe the
      # type of service that the merchant provides. For example, haircut can be a
      # service.
      class ServiceItem
        include Google::Apis::Core::Hashable
      
        # Represents a free-form service offered by the merchant. These are services
        # that are not exposed as part of our structure service data. The merchant
        # manually enters the names for of such services via a geomerchant surface.
        # Corresponds to the JSON property `freeFormServiceItem`
        # @return [Google::Apis::MybusinessV4::FreeFormServiceItem]
        attr_accessor :free_form_service_item
      
        # Optional. This field decides whether or not the input service is offered by
        # the merchant.
        # Corresponds to the JSON property `isOffered`
        # @return [Boolean]
        attr_accessor :is_offered
        alias_method :is_offered?, :is_offered
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::MybusinessV4::Money]
        attr_accessor :price
      
        # Represents a structured service offered by the merchant. For eg:
        # toilet_installation.
        # Corresponds to the JSON property `structuredServiceItem`
        # @return [Google::Apis::MybusinessV4::StructuredServiceItem]
        attr_accessor :structured_service_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_form_service_item = args[:free_form_service_item] if args.key?(:free_form_service_item)
          @is_offered = args[:is_offered] if args.key?(:is_offered)
          @price = args[:price] if args.key?(:price)
          @structured_service_item = args[:structured_service_item] if args.key?(:structured_service_item)
        end
      end
      
      # A service list containing one or more service items.
      class ServiceList
        include Google::Apis::Core::Hashable
      
        # Required. Google identifier for this location in the form: `accounts/`
        # account_id`/locations/`location_id`/serviceList`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Service items that are contained within this service list. Duplicated service
        # items will be removed automatically.
        # Corresponds to the JSON property `serviceItems`
        # @return [Array<Google::Apis::MybusinessV4::ServiceItem>]
        attr_accessor :service_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @service_items = args[:service_items] if args.key?(:service_items)
        end
      end
      
      # A message describing a service type that the business offers.
      class ServiceType
        include Google::Apis::Core::Hashable
      
        # Output only. The human-readable display name for the service type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A stable ID (provided by Google) for this service type.
        # Corresponds to the JSON property `serviceTypeId`
        # @return [String]
        attr_accessor :service_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @service_type_id = args[:service_type_id] if args.key?(:service_type_id)
        end
      end
      
      # Conveniences or help provided by the property to facilitate an easier, more
      # comfortable stay.
      class Services
        include Google::Apis::Core::Hashable
      
        # Baggage storage. A provision for guests to leave their bags at the hotel when
        # they arrive for their stay before the official check-in time. May or may not
        # apply for guests who wish to leave their bags after check-out and before
        # departing the locale. Also known as bag dropoff.
        # Corresponds to the JSON property `baggageStorage`
        # @return [Boolean]
        attr_accessor :baggage_storage
        alias_method :baggage_storage?, :baggage_storage
      
        # Baggage storage exception.
        # Corresponds to the JSON property `baggageStorageException`
        # @return [String]
        attr_accessor :baggage_storage_exception
      
        # Concierge. Hotel staff member(s) responsible for facilitating an easy,
        # comfortable stay through making reservations for meals, sourcing theater
        # tickets, arranging tours, finding a doctor, making recommendations, and
        # answering questions.
        # Corresponds to the JSON property `concierge`
        # @return [Boolean]
        attr_accessor :concierge
        alias_method :concierge?, :concierge
      
        # Concierge exception.
        # Corresponds to the JSON property `conciergeException`
        # @return [String]
        attr_accessor :concierge_exception
      
        # Convenience store. A shop at the hotel primarily selling snacks, drinks, non-
        # prescription medicines, health and beauty aids, magazines and newspapers.
        # Corresponds to the JSON property `convenienceStore`
        # @return [Boolean]
        attr_accessor :convenience_store
        alias_method :convenience_store?, :convenience_store
      
        # Convenience store exception.
        # Corresponds to the JSON property `convenienceStoreException`
        # @return [String]
        attr_accessor :convenience_store_exception
      
        # Currency exchange. A staff member or automated machine tasked with the
        # transaction of providing the native currency of the hotel's locale in exchange
        # for the foreign currency provided by a guest.
        # Corresponds to the JSON property `currencyExchange`
        # @return [Boolean]
        attr_accessor :currency_exchange
        alias_method :currency_exchange?, :currency_exchange
      
        # Currency exchange exception.
        # Corresponds to the JSON property `currencyExchangeException`
        # @return [String]
        attr_accessor :currency_exchange_exception
      
        # Elevator. A passenger elevator that transports guests from one story to
        # another. Also known as lift.
        # Corresponds to the JSON property `elevator`
        # @return [Boolean]
        attr_accessor :elevator
        alias_method :elevator?, :elevator
      
        # Elevator exception.
        # Corresponds to the JSON property `elevatorException`
        # @return [String]
        attr_accessor :elevator_exception
      
        # Front desk. A counter or desk in the lobby or the immediate interior of the
        # hotel where a member of the staff greets guests and processes the information
        # related to their stay (including check-in and check-out). May or may not be
        # manned and open 24/7.
        # Corresponds to the JSON property `frontDesk`
        # @return [Boolean]
        attr_accessor :front_desk
        alias_method :front_desk?, :front_desk
      
        # Front desk exception.
        # Corresponds to the JSON property `frontDeskException`
        # @return [String]
        attr_accessor :front_desk_exception
      
        # Full service laundry. Laundry and dry cleaning facilitated and handled by the
        # hotel on behalf of the guest. Does not include the provision for guests to do
        # their own laundry in on-site machines.
        # Corresponds to the JSON property `fullServiceLaundry`
        # @return [Boolean]
        attr_accessor :full_service_laundry
        alias_method :full_service_laundry?, :full_service_laundry
      
        # Full service laundry exception.
        # Corresponds to the JSON property `fullServiceLaundryException`
        # @return [String]
        attr_accessor :full_service_laundry_exception
      
        # Gift shop. An on-site store primarily selling souvenirs, mementos and other
        # gift items. May or may not also sell sundries, magazines and newspapers,
        # clothing, or snacks.
        # Corresponds to the JSON property `giftShop`
        # @return [Boolean]
        attr_accessor :gift_shop
        alias_method :gift_shop?, :gift_shop
      
        # Gift shop exception.
        # Corresponds to the JSON property `giftShopException`
        # @return [String]
        attr_accessor :gift_shop_exception
      
        # Languages spoken by at least one staff member.
        # Corresponds to the JSON property `languagesSpoken`
        # @return [Google::Apis::MybusinessV4::LanguagesSpoken]
        attr_accessor :languages_spoken
      
        # Self service laundry. On-site clothes washers and dryers accessible to guests
        # for the purpose of washing and drying their own clothes. May or may not
        # require payment to use the machines.
        # Corresponds to the JSON property `selfServiceLaundry`
        # @return [Boolean]
        attr_accessor :self_service_laundry
        alias_method :self_service_laundry?, :self_service_laundry
      
        # Self service laundry exception.
        # Corresponds to the JSON property `selfServiceLaundryException`
        # @return [String]
        attr_accessor :self_service_laundry_exception
      
        # Social hour. A reception with complimentary soft drinks, tea, coffee, wine and/
        # or cocktails in the afternoon or evening. Can be hosted by hotel staff or
        # guests may serve themselves. Also known as wine hour. The availability of
        # coffee/tea in the lobby throughout the day does not constitute a social or
        # wine hour.
        # Corresponds to the JSON property `socialHour`
        # @return [Boolean]
        attr_accessor :social_hour
        alias_method :social_hour?, :social_hour
      
        # Social hour exception.
        # Corresponds to the JSON property `socialHourException`
        # @return [String]
        attr_accessor :social_hour_exception
      
        # 24hr front desk. Front desk is staffed 24 hours a day.
        # Corresponds to the JSON property `twentyFourHourFrontDesk`
        # @return [Boolean]
        attr_accessor :twenty_four_hour_front_desk
        alias_method :twenty_four_hour_front_desk?, :twenty_four_hour_front_desk
      
        # 24hr front desk exception.
        # Corresponds to the JSON property `twentyFourHourFrontDeskException`
        # @return [String]
        attr_accessor :twenty_four_hour_front_desk_exception
      
        # Wake up calls. By direction of the guest, a hotel staff member will phone the
        # guest unit at the requested hour. Also known as morning call.
        # Corresponds to the JSON property `wakeUpCalls`
        # @return [Boolean]
        attr_accessor :wake_up_calls
        alias_method :wake_up_calls?, :wake_up_calls
      
        # Wake up calls exception.
        # Corresponds to the JSON property `wakeUpCallsException`
        # @return [String]
        attr_accessor :wake_up_calls_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baggage_storage = args[:baggage_storage] if args.key?(:baggage_storage)
          @baggage_storage_exception = args[:baggage_storage_exception] if args.key?(:baggage_storage_exception)
          @concierge = args[:concierge] if args.key?(:concierge)
          @concierge_exception = args[:concierge_exception] if args.key?(:concierge_exception)
          @convenience_store = args[:convenience_store] if args.key?(:convenience_store)
          @convenience_store_exception = args[:convenience_store_exception] if args.key?(:convenience_store_exception)
          @currency_exchange = args[:currency_exchange] if args.key?(:currency_exchange)
          @currency_exchange_exception = args[:currency_exchange_exception] if args.key?(:currency_exchange_exception)
          @elevator = args[:elevator] if args.key?(:elevator)
          @elevator_exception = args[:elevator_exception] if args.key?(:elevator_exception)
          @front_desk = args[:front_desk] if args.key?(:front_desk)
          @front_desk_exception = args[:front_desk_exception] if args.key?(:front_desk_exception)
          @full_service_laundry = args[:full_service_laundry] if args.key?(:full_service_laundry)
          @full_service_laundry_exception = args[:full_service_laundry_exception] if args.key?(:full_service_laundry_exception)
          @gift_shop = args[:gift_shop] if args.key?(:gift_shop)
          @gift_shop_exception = args[:gift_shop_exception] if args.key?(:gift_shop_exception)
          @languages_spoken = args[:languages_spoken] if args.key?(:languages_spoken)
          @self_service_laundry = args[:self_service_laundry] if args.key?(:self_service_laundry)
          @self_service_laundry_exception = args[:self_service_laundry_exception] if args.key?(:self_service_laundry_exception)
          @social_hour = args[:social_hour] if args.key?(:social_hour)
          @social_hour_exception = args[:social_hour_exception] if args.key?(:social_hour_exception)
          @twenty_four_hour_front_desk = args[:twenty_four_hour_front_desk] if args.key?(:twenty_four_hour_front_desk)
          @twenty_four_hour_front_desk_exception = args[:twenty_four_hour_front_desk_exception] if args.key?(:twenty_four_hour_front_desk_exception)
          @wake_up_calls = args[:wake_up_calls] if args.key?(:wake_up_calls)
          @wake_up_calls_exception = args[:wake_up_calls_exception] if args.key?(:wake_up_calls_exception)
        end
      end
      
      # Represents a single time period when a location's operational hours differ
      # from its normal business hours. A special hour period must represent a range
      # of less than 24 hours. The `open_time` and `start_date` must predate the `
      # close_time` and `end_date`. The `close_time` and `end_date` can extend to 11:
      # 59 a.m. on the day after the specified `start_date`. For example, the
      # following inputs are valid: start_date=2015-11-23, open_time=08:00, close_time=
      # 18:00 start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=
      # 18:00 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=
      # 11:59 The following inputs are not valid: start_date=2015-11-23, open_time=13:
      # 00, close_time=11:59 start_date=2015-11-23, end_date=2015-11-24, open_time=13:
      # 00, close_time=12:00 start_date=2015-11-23, end_date=2015-11-25, open_time=08:
      # 00, close_time=18:00
      class SpecialHourPeriod
        include Google::Apis::Core::Hashable
      
        # The wall time on `end_date` when a location closes, expressed in 24hr ISO 8601
        # extended format. (hh:mm) Valid values are 00:00-24:00, where 24:00 represents
        # midnight at the end of the specified day field. Must be specified if `
        # is_closed` is false.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :end_date
      
        # If true, `end_date`, `open_time`, and `close_time` are ignored, and the date
        # specified in `start_date` is treated as the location being closed for the
        # entire day.
        # Corresponds to the JSON property `isClosed`
        # @return [Boolean]
        attr_accessor :is_closed
        alias_method :is_closed?, :is_closed
      
        # The wall time on `start_date` when a location opens, expressed in 24hr ISO
        # 8601 extended format. (hh:mm) Valid values are 00:00-24:00, where 24:00
        # represents midnight at the end of the specified day field. Must be specified
        # if `is_closed` is false.
        # Corresponds to the JSON property `openTime`
        # @return [String]
        attr_accessor :open_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close_time = args[:close_time] if args.key?(:close_time)
          @end_date = args[:end_date] if args.key?(:end_date)
          @is_closed = args[:is_closed] if args.key?(:is_closed)
          @open_time = args[:open_time] if args.key?(:open_time)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Represents a set of time periods when a location's operational hours differ
      # from its normal business hours.
      class SpecialHours
        include Google::Apis::Core::Hashable
      
        # A list of exceptions to the business's regular hours.
        # Corresponds to the JSON property `specialHourPeriods`
        # @return [Array<Google::Apis::MybusinessV4::SpecialHourPeriod>]
        attr_accessor :special_hour_periods
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @special_hour_periods = args[:special_hour_periods] if args.key?(:special_hour_periods)
        end
      end
      
      # Request message for Media.StartUploadMediaItemData.
      class StartUploadMediaItemDataRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a structured service offered by the merchant. For eg:
      # toilet_installation.
      class StructuredServiceItem
        include Google::Apis::Core::Hashable
      
        # Optional. Description of structured service item. The character limit is 300.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The `service_type_id` field is a Google provided unique ID that can
        # be found in `ServiceTypeMetadata`. This information is provided by
        # BatchGetBusinessCategories rpc service.
        # Corresponds to the JSON property `serviceTypeId`
        # @return [String]
        attr_accessor :service_type_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @service_type_id = args[:service_type_id] if args.key?(:service_type_id)
        end
      end
      
      # Represents a target location for a pending invitation.
      class TargetLocation
        include Google::Apis::Core::Hashable
      
        # The address of the location to which the user is invited.
        # Corresponds to the JSON property `locationAddress`
        # @return [String]
        attr_accessor :location_address
      
        # The name of the location to which the user is invited.
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_address = args[:location_address] if args.key?(:location_address)
          @location_name = args[:location_name] if args.key?(:location_name)
        end
      end
      
      # The dimension for which data is divided over.
      class TimeDimension
        include Google::Apis::Core::Hashable
      
        # The day of the week ("MONDAY" to "SUNDAY") this value corresponds to. Set for
        # BREAKDOWN_DAY_OF_WEEK option.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeOfDay`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :time_of_day
      
        # A range of time. Data will be pulled over the range as a half-open inverval (
        # that is, [start_time, end_time)).
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::MybusinessV4::TimeRange]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @time_of_day = args[:time_of_day] if args.key?(:time_of_day)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # An interval of time, inclusive. It must contain all fields to be valid.
      class TimeInterval
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :end_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :end_time
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::MybusinessV4::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::MybusinessV4::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_date = args[:start_date] if args.key?(:start_date)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a span of time that the business is open, starting on the specified
      # open day/time and closing on the specified close day/time. The closing time
      # must occur after the opening time, for example later in the same day, or on a
      # subsequent day.
      class TimePeriod
        include Google::Apis::Core::Hashable
      
        # Indicates the day of the week this period ends on.
        # Corresponds to the JSON property `closeDay`
        # @return [String]
        attr_accessor :close_day
      
        # Time in 24hr ISO 8601 extended format (hh:mm). Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Corresponds to the JSON property `closeTime`
        # @return [String]
        attr_accessor :close_time
      
        # Indicates the day of the week this period starts on.
        # Corresponds to the JSON property `openDay`
        # @return [String]
        attr_accessor :open_day
      
        # Time in 24hr ISO 8601 extended format (hh:mm). Valid values are 00:00-24:00,
        # where 24:00 represents midnight at the end of the specified day field.
        # Corresponds to the JSON property `openTime`
        # @return [String]
        attr_accessor :open_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close_day = args[:close_day] if args.key?(:close_day)
          @close_time = args[:close_time] if args.key?(:close_time)
          @open_day = args[:open_day] if args.key?(:open_day)
          @open_time = args[:open_time] if args.key?(:open_time)
        end
      end
      
      # A range of time. Data will be pulled over the range as a half-open inverval (
      # that is, [start_time, end_time)).
      class TimeRange
        include Google::Apis::Core::Hashable
      
        # Epoch timestamp for the end of the range (exclusive).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Epoch timestamp for the start of the range (inclusive).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Top regions where driving-direction requests originated from.
      class TopDirectionSources
        include Google::Apis::Core::Hashable
      
        # The number of days data is aggregated over.
        # Corresponds to the JSON property `dayCount`
        # @return [Fixnum]
        attr_accessor :day_count
      
        # Regions sorted in descending order by count.
        # Corresponds to the JSON property `regionCounts`
        # @return [Array<Google::Apis::MybusinessV4::RegionCount>]
        attr_accessor :region_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_count = args[:day_count] if args.key?(:day_count)
          @region_counts = args[:region_counts] if args.key?(:region_counts)
        end
      end
      
      # Request message for Locations.TransferLocation.
      class TransferLocationRequest
        include Google::Apis::Core::Hashable
      
        # Name of the account resource to transfer the location to (for example, "
        # accounts/8675309").
        # Corresponds to the JSON property `toAccount`
        # @return [String]
        attr_accessor :to_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @to_account = args[:to_account] if args.key?(:to_account)
        end
      end
      
      # Vehicles or vehicular services facilitated or owned by the property.
      class Transportation
        include Google::Apis::Core::Hashable
      
        # Airport shuttle. The hotel provides guests with a chauffeured van or bus to
        # and from the airport. Can be free or for a fee. Guests may share the vehicle
        # with other guests unknown to them. Applies if the hotel has a third-party
        # shuttle service (office/desk etc.) within the hotel. As long as hotel provides
        # this service, it doesn't matter if it's directly with them or a third party
        # they work with. Does not apply if guest has to coordinate with an entity
        # outside/other than the hotel.
        # Corresponds to the JSON property `airportShuttle`
        # @return [Boolean]
        attr_accessor :airport_shuttle
        alias_method :airport_shuttle?, :airport_shuttle
      
        # Airport shuttle exception.
        # Corresponds to the JSON property `airportShuttleException`
        # @return [String]
        attr_accessor :airport_shuttle_exception
      
        # Car rental on property. A branch of a rental car company with a processing
        # desk in the hotel. Available cars for rent may be awaiting at the hotel or in
        # a nearby lot.
        # Corresponds to the JSON property `carRentalOnProperty`
        # @return [Boolean]
        attr_accessor :car_rental_on_property
        alias_method :car_rental_on_property?, :car_rental_on_property
      
        # Car rental on property exception.
        # Corresponds to the JSON property `carRentalOnPropertyException`
        # @return [String]
        attr_accessor :car_rental_on_property_exception
      
        # Free airport shuttle. Airport shuttle is free to guests. Must be free to all
        # guests without any conditions.
        # Corresponds to the JSON property `freeAirportShuttle`
        # @return [Boolean]
        attr_accessor :free_airport_shuttle
        alias_method :free_airport_shuttle?, :free_airport_shuttle
      
        # Free airport shuttle exception.
        # Corresponds to the JSON property `freeAirportShuttleException`
        # @return [String]
        attr_accessor :free_airport_shuttle_exception
      
        # Free private car service. Private chauffeured car service is free to guests.
        # Corresponds to the JSON property `freePrivateCarService`
        # @return [Boolean]
        attr_accessor :free_private_car_service
        alias_method :free_private_car_service?, :free_private_car_service
      
        # Free private car service exception.
        # Corresponds to the JSON property `freePrivateCarServiceException`
        # @return [String]
        attr_accessor :free_private_car_service_exception
      
        # Local shuttle. A car, van or bus provided by the hotel to transport guests to
        # destinations within a specified range of distance around the hotel. Usually
        # shopping and/or convention centers, downtown districts, or beaches. Can be
        # free or for a fee.
        # Corresponds to the JSON property `localShuttle`
        # @return [Boolean]
        attr_accessor :local_shuttle
        alias_method :local_shuttle?, :local_shuttle
      
        # Local shuttle exception.
        # Corresponds to the JSON property `localShuttleException`
        # @return [String]
        attr_accessor :local_shuttle_exception
      
        # Private car service. Hotel provides a private chauffeured car to transport
        # guests to destinations. Passengers in the car are either alone or are known to
        # one another and have requested the car together. Service can be free or for a
        # fee and travel distance is usually limited to a specific range. Not a taxi.
        # Corresponds to the JSON property `privateCarService`
        # @return [Boolean]
        attr_accessor :private_car_service
        alias_method :private_car_service?, :private_car_service
      
        # Private car service exception.
        # Corresponds to the JSON property `privateCarServiceException`
        # @return [String]
        attr_accessor :private_car_service_exception
      
        # Transfer. Hotel provides a shuttle service or car service to take guests to
        # and from the nearest airport or train station. Can be free or for a fee.
        # Guests may share the vehicle with other guests unknown to them.
        # Corresponds to the JSON property `transfer`
        # @return [Boolean]
        attr_accessor :transfer
        alias_method :transfer?, :transfer
      
        # Transfer exception.
        # Corresponds to the JSON property `transferException`
        # @return [String]
        attr_accessor :transfer_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @airport_shuttle = args[:airport_shuttle] if args.key?(:airport_shuttle)
          @airport_shuttle_exception = args[:airport_shuttle_exception] if args.key?(:airport_shuttle_exception)
          @car_rental_on_property = args[:car_rental_on_property] if args.key?(:car_rental_on_property)
          @car_rental_on_property_exception = args[:car_rental_on_property_exception] if args.key?(:car_rental_on_property_exception)
          @free_airport_shuttle = args[:free_airport_shuttle] if args.key?(:free_airport_shuttle)
          @free_airport_shuttle_exception = args[:free_airport_shuttle_exception] if args.key?(:free_airport_shuttle_exception)
          @free_private_car_service = args[:free_private_car_service] if args.key?(:free_private_car_service)
          @free_private_car_service_exception = args[:free_private_car_service_exception] if args.key?(:free_private_car_service_exception)
          @local_shuttle = args[:local_shuttle] if args.key?(:local_shuttle)
          @local_shuttle_exception = args[:local_shuttle_exception] if args.key?(:local_shuttle_exception)
          @private_car_service = args[:private_car_service] if args.key?(:private_car_service)
          @private_car_service_exception = args[:private_car_service_exception] if args.key?(:private_car_service_exception)
          @transfer = args[:transfer] if args.key?(:transfer)
          @transfer_exception = args[:transfer_exception] if args.key?(:transfer_exception)
        end
      end
      
      # Request message for QuestionsAndAnswers.UpsertAnswer
      class UpsertAnswerRequest
        include Google::Apis::Core::Hashable
      
        # Represents an answer to a question
        # Corresponds to the JSON property `answer`
        # @return [Google::Apis::MybusinessV4::Answer]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
      
      # Values for an attribute with a `value_type` of URL.
      class UrlAttributeValue
        include Google::Apis::Core::Hashable
      
        # The URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A verification represents a verification attempt on a location.
      class Verification
        include Google::Apis::Core::Hashable
      
        # The timestamp when the verification is requested.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The method of the verification.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Resource name of the verification.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of the verification.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The verification option represents how to verify the location (indicated by
      # verification method) and where the verification will be sent to (indicated by
      # display data).
      class VerificationOption
        include Google::Apis::Core::Hashable
      
        # Display data for verifications through postcard.
        # Corresponds to the JSON property `addressData`
        # @return [Google::Apis::MybusinessV4::AddressVerificationData]
        attr_accessor :address_data
      
        # Display data for verifications through email.
        # Corresponds to the JSON property `emailData`
        # @return [Google::Apis::MybusinessV4::EmailVerificationData]
        attr_accessor :email_data
      
        # Display Data for verifications through phone, e.g. phone call, sms.
        # Corresponds to the JSON property `phoneData`
        # @return [Google::Apis::MybusinessV4::PhoneVerificationData]
        attr_accessor :phone_data
      
        # Method to verify the location.
        # Corresponds to the JSON property `verificationMethod`
        # @return [String]
        attr_accessor :verification_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_data = args[:address_data] if args.key?(:address_data)
          @email_data = args[:email_data] if args.key?(:email_data)
          @phone_data = args[:phone_data] if args.key?(:phone_data)
          @verification_method = args[:verification_method] if args.key?(:verification_method)
        end
      end
      
      # Request message for Verifications.VerifyLocation.
      class VerifyLocationRequest
        include Google::Apis::Core::Hashable
      
        # Input for ADDRESS verification.
        # Corresponds to the JSON property `addressInput`
        # @return [Google::Apis::MybusinessV4::AddressInput]
        attr_accessor :address_input
      
        # Additional data for service business verification.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::MybusinessV4::ServiceBusinessContext]
        attr_accessor :context
      
        # Input for EMAIL verification.
        # Corresponds to the JSON property `emailInput`
        # @return [Google::Apis::MybusinessV4::EmailInput]
        attr_accessor :email_input
      
        # The BCP 47 language code representing the language that is to be used for the
        # verification process.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Verification method.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Input for PHONE_CALL/SMS verification.
        # Corresponds to the JSON property `phoneInput`
        # @return [Google::Apis::MybusinessV4::PhoneInput]
        attr_accessor :phone_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_input = args[:address_input] if args.key?(:address_input)
          @context = args[:context] if args.key?(:context)
          @email_input = args[:email_input] if args.key?(:email_input)
          @language_code = args[:language_code] if args.key?(:language_code)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @phone_input = args[:phone_input] if args.key?(:phone_input)
        end
      end
      
      # Response message for Verifications.VerifyLocation.
      class VerifyLocationResponse
        include Google::Apis::Core::Hashable
      
        # A verification represents a verification attempt on a location.
        # Corresponds to the JSON property `verification`
        # @return [Google::Apis::MybusinessV4::Verification]
        attr_accessor :verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification = args[:verification] if args.key?(:verification)
        end
      end
      
      # Views available from the guest unit itself.
      class ViewsFromUnit
        include Google::Apis::Core::Hashable
      
        # Beach view. A guestroom that features a window through which guests can see
        # the beach.
        # Corresponds to the JSON property `beachView`
        # @return [Boolean]
        attr_accessor :beach_view
        alias_method :beach_view?, :beach_view
      
        # Beach view exception.
        # Corresponds to the JSON property `beachViewException`
        # @return [String]
        attr_accessor :beach_view_exception
      
        # City view. A guestroom that features a window through which guests can see the
        # buildings, parks and/or streets of the city.
        # Corresponds to the JSON property `cityView`
        # @return [Boolean]
        attr_accessor :city_view
        alias_method :city_view?, :city_view
      
        # City view exception.
        # Corresponds to the JSON property `cityViewException`
        # @return [String]
        attr_accessor :city_view_exception
      
        # Garden view. A guestroom that features a window through which guests can see a
        # garden.
        # Corresponds to the JSON property `gardenView`
        # @return [Boolean]
        attr_accessor :garden_view
        alias_method :garden_view?, :garden_view
      
        # Garden view exception.
        # Corresponds to the JSON property `gardenViewException`
        # @return [String]
        attr_accessor :garden_view_exception
      
        # Lake view.
        # Corresponds to the JSON property `lakeView`
        # @return [Boolean]
        attr_accessor :lake_view
        alias_method :lake_view?, :lake_view
      
        # Lake view exception.
        # Corresponds to the JSON property `lakeViewException`
        # @return [String]
        attr_accessor :lake_view_exception
      
        # Landmark view. A guestroom that features a window through which guests can see
        # a landmark such as the countryside, a golf course, the forest, a park, a rain
        # forst, a mountain or a slope.
        # Corresponds to the JSON property `landmarkView`
        # @return [Boolean]
        attr_accessor :landmark_view
        alias_method :landmark_view?, :landmark_view
      
        # Landmark view exception.
        # Corresponds to the JSON property `landmarkViewException`
        # @return [String]
        attr_accessor :landmark_view_exception
      
        # Ocean view. A guestroom that features a window through which guests can see
        # the ocean.
        # Corresponds to the JSON property `oceanView`
        # @return [Boolean]
        attr_accessor :ocean_view
        alias_method :ocean_view?, :ocean_view
      
        # Ocean view exception.
        # Corresponds to the JSON property `oceanViewException`
        # @return [String]
        attr_accessor :ocean_view_exception
      
        # Pool view. A guestroom that features a window through which guests can see the
        # hotel's swimming pool.
        # Corresponds to the JSON property `poolView`
        # @return [Boolean]
        attr_accessor :pool_view
        alias_method :pool_view?, :pool_view
      
        # Pool view exception.
        # Corresponds to the JSON property `poolViewException`
        # @return [String]
        attr_accessor :pool_view_exception
      
        # Valley view. A guestroom that features a window through which guests can see
        # over a valley.
        # Corresponds to the JSON property `valleyView`
        # @return [Boolean]
        attr_accessor :valley_view
        alias_method :valley_view?, :valley_view
      
        # Valley view exception.
        # Corresponds to the JSON property `valleyViewException`
        # @return [String]
        attr_accessor :valley_view_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @beach_view = args[:beach_view] if args.key?(:beach_view)
          @beach_view_exception = args[:beach_view_exception] if args.key?(:beach_view_exception)
          @city_view = args[:city_view] if args.key?(:city_view)
          @city_view_exception = args[:city_view_exception] if args.key?(:city_view_exception)
          @garden_view = args[:garden_view] if args.key?(:garden_view)
          @garden_view_exception = args[:garden_view_exception] if args.key?(:garden_view_exception)
          @lake_view = args[:lake_view] if args.key?(:lake_view)
          @lake_view_exception = args[:lake_view_exception] if args.key?(:lake_view_exception)
          @landmark_view = args[:landmark_view] if args.key?(:landmark_view)
          @landmark_view_exception = args[:landmark_view_exception] if args.key?(:landmark_view_exception)
          @ocean_view = args[:ocean_view] if args.key?(:ocean_view)
          @ocean_view_exception = args[:ocean_view_exception] if args.key?(:ocean_view_exception)
          @pool_view = args[:pool_view] if args.key?(:pool_view)
          @pool_view_exception = args[:pool_view_exception] if args.key?(:pool_view_exception)
          @valley_view = args[:valley_view] if args.key?(:valley_view)
          @valley_view_exception = args[:valley_view_exception] if args.key?(:valley_view_exception)
        end
      end
      
      # Guest facilities at the property to promote or maintain health, beauty, and
      # fitness.
      class Wellness
        include Google::Apis::Core::Hashable
      
        # Doctor on call. The hotel has a contract with a medical professional who
        # provides services to hotel guests should they fall ill during their stay. The
        # doctor may or may not have an on-site office or be at the hotel at all times.
        # Corresponds to the JSON property `doctorOnCall`
        # @return [Boolean]
        attr_accessor :doctor_on_call
        alias_method :doctor_on_call?, :doctor_on_call
      
        # Doctor on call exception.
        # Corresponds to the JSON property `doctorOnCallException`
        # @return [String]
        attr_accessor :doctor_on_call_exception
      
        # Elliptical machine. An electric, stationary fitness machine with pedals that
        # simulates climbing, walking or running and provides a user-controlled range of
        # speeds and tensions. May not have arm-controlled levers to work out the upper
        # body as well. Commonly found in a gym, fitness room, health center, or health
        # club.
        # Corresponds to the JSON property `ellipticalMachine`
        # @return [Boolean]
        attr_accessor :elliptical_machine
        alias_method :elliptical_machine?, :elliptical_machine
      
        # Elliptical machine exception.
        # Corresponds to the JSON property `ellipticalMachineException`
        # @return [String]
        attr_accessor :elliptical_machine_exception
      
        # Fitness center. A room or building at the hotel containing equipment to
        # promote physical activity, such as treadmills, elliptical machines, stationary
        # bikes, weight machines, free weights, and/or stretching mats. Use of the
        # fitness center can be free or for a fee. May or may not be staffed. May or may
        # not offer instructor-led classes in various styles of physical conditioning.
        # May or may not be open 24/7. May or may not include locker rooms and showers.
        # Also known as health club, gym, fitness room, health center.
        # Corresponds to the JSON property `fitnessCenter`
        # @return [Boolean]
        attr_accessor :fitness_center
        alias_method :fitness_center?, :fitness_center
      
        # Fitness center exception.
        # Corresponds to the JSON property `fitnessCenterException`
        # @return [String]
        attr_accessor :fitness_center_exception
      
        # Free fitness center. Guests may use the fitness center for free.
        # Corresponds to the JSON property `freeFitnessCenter`
        # @return [Boolean]
        attr_accessor :free_fitness_center
        alias_method :free_fitness_center?, :free_fitness_center
      
        # Free fitness center exception.
        # Corresponds to the JSON property `freeFitnessCenterException`
        # @return [String]
        attr_accessor :free_fitness_center_exception
      
        # Free weights. Individual handheld fitness equipment of varied weights used for
        # upper body strength training or bodybuilding. Also known as barbells,
        # dumbbells, or kettlebells. Often stored on a rack with the weights arranged
        # from light to heavy. Commonly found in a gym, fitness room, health center, or
        # health club.
        # Corresponds to the JSON property `freeWeights`
        # @return [Boolean]
        attr_accessor :free_weights
        alias_method :free_weights?, :free_weights
      
        # Free weights exception.
        # Corresponds to the JSON property `freeWeightsException`
        # @return [String]
        attr_accessor :free_weights_exception
      
        # Massage. A service provided by a trained massage therapist involving the
        # physical manipulation of a guest's muscles in order to achieve relaxation or
        # pain relief.
        # Corresponds to the JSON property `massage`
        # @return [Boolean]
        attr_accessor :massage
        alias_method :massage?, :massage
      
        # Massage exception.
        # Corresponds to the JSON property `massageException`
        # @return [String]
        attr_accessor :massage_exception
      
        # Salon. A room at the hotel where professionals provide hair styling services
        # such as shampooing, blow drying, hair dos, hair cutting and hair coloring.
        # Also known as hairdresser or beauty salon.
        # Corresponds to the JSON property `salon`
        # @return [Boolean]
        attr_accessor :salon
        alias_method :salon?, :salon
      
        # Salon exception.
        # Corresponds to the JSON property `salonException`
        # @return [String]
        attr_accessor :salon_exception
      
        # Sauna. A wood-paneled room heated to a high temperature where guests sit on
        # built-in wood benches for the purpose of perspiring and relaxing their muscles.
        # Can be dry or slightly wet heat. Not a steam room.
        # Corresponds to the JSON property `sauna`
        # @return [Boolean]
        attr_accessor :sauna
        alias_method :sauna?, :sauna
      
        # Sauna exception.
        # Corresponds to the JSON property `saunaException`
        # @return [String]
        attr_accessor :sauna_exception
      
        # Spa. A designated area, room or building at the hotel offering health and
        # beauty treatment through such means as steam baths, exercise equipment, and
        # massage. May also offer facials, nail care, and hair care. Services are
        # usually available by appointment and for an additional fee. Does not apply if
        # hotel only offers a steam room; must offer other beauty and/or health
        # treatments as well.
        # Corresponds to the JSON property `spa`
        # @return [Boolean]
        attr_accessor :spa
        alias_method :spa?, :spa
      
        # Spa exception.
        # Corresponds to the JSON property `spaException`
        # @return [String]
        attr_accessor :spa_exception
      
        # Treadmill. An electric stationary fitness machine that simulates a moving path
        # to promote walking or running within a range of user-controlled speeds and
        # inclines. Also known as running machine. Commonly found in a gym, fitness room,
        # health center, or health club.
        # Corresponds to the JSON property `treadmill`
        # @return [Boolean]
        attr_accessor :treadmill
        alias_method :treadmill?, :treadmill
      
        # Treadmill exception.
        # Corresponds to the JSON property `treadmillException`
        # @return [String]
        attr_accessor :treadmill_exception
      
        # Weight machine. Non-electronic fitness equipment designed for the user to
        # target the exertion of different muscles. Usually incorporates a padded seat,
        # a stack of flat weights and various bars and pulleys. May be designed for
        # toning a specific part of the body or may involve different user-controlled
        # settings, hardware and pulleys so as to provide an overall workout in one
        # machine. Commonly found in a gym, fitness center, fitness room, or health club.
        # Corresponds to the JSON property `weightMachine`
        # @return [Boolean]
        attr_accessor :weight_machine
        alias_method :weight_machine?, :weight_machine
      
        # Weight machine exception.
        # Corresponds to the JSON property `weightMachineException`
        # @return [String]
        attr_accessor :weight_machine_exception
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @doctor_on_call = args[:doctor_on_call] if args.key?(:doctor_on_call)
          @doctor_on_call_exception = args[:doctor_on_call_exception] if args.key?(:doctor_on_call_exception)
          @elliptical_machine = args[:elliptical_machine] if args.key?(:elliptical_machine)
          @elliptical_machine_exception = args[:elliptical_machine_exception] if args.key?(:elliptical_machine_exception)
          @fitness_center = args[:fitness_center] if args.key?(:fitness_center)
          @fitness_center_exception = args[:fitness_center_exception] if args.key?(:fitness_center_exception)
          @free_fitness_center = args[:free_fitness_center] if args.key?(:free_fitness_center)
          @free_fitness_center_exception = args[:free_fitness_center_exception] if args.key?(:free_fitness_center_exception)
          @free_weights = args[:free_weights] if args.key?(:free_weights)
          @free_weights_exception = args[:free_weights_exception] if args.key?(:free_weights_exception)
          @massage = args[:massage] if args.key?(:massage)
          @massage_exception = args[:massage_exception] if args.key?(:massage_exception)
          @salon = args[:salon] if args.key?(:salon)
          @salon_exception = args[:salon_exception] if args.key?(:salon_exception)
          @sauna = args[:sauna] if args.key?(:sauna)
          @sauna_exception = args[:sauna_exception] if args.key?(:sauna_exception)
          @spa = args[:spa] if args.key?(:spa)
          @spa_exception = args[:spa_exception] if args.key?(:spa_exception)
          @treadmill = args[:treadmill] if args.key?(:treadmill)
          @treadmill_exception = args[:treadmill_exception] if args.key?(:treadmill_exception)
          @weight_machine = args[:weight_machine] if args.key?(:weight_machine)
          @weight_machine_exception = args[:weight_machine_exception] if args.key?(:weight_machine_exception)
        end
      end
    end
  end
end
