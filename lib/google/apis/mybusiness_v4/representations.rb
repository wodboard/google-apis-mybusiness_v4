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
      
      class AcceptInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Accessibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Activities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdWordsLocationExtensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Admin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Answer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssociateLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeValueMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Author
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetBusinessCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetReviewsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Business
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallToAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CaloriesFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Chain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChainName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChainUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearLocationAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeclineInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionalMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DrivingDirectionMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duplicate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnhancedCleaning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Families
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindMatchingLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindMatchingLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FollowersMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodAndDrink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenuItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenuItemAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenuItemOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenuSection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FoodMenus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FreeFormServiceItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAccountNumberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetGoogleUpdatedLodgingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleUpdatedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestUnitFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestUnitType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthAndSafety
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HealthProviderAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Housekeeping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IncreasedFoodSafety
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Ingredient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsuranceNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguagesSpoken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnswersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAttributeMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBusinessCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomerMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInsuranceNetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocalPostsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQuestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRecommendedGoogleLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVerificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaAccessibility
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaEating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LivingAreaSleeping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationDrivingDirectionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Lodging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LodgingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaItemDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MenuLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinimizedContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoreHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoreHoursType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notifications
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NutritionFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NutritionFacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Parking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PaymentOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonalProtection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhysicalDistancing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Places
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PointRadius
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pools
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PortionSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Profile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Question
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationshipData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepeatedEnumAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportGoogleLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocalPostInsightsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocalPostInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocationInsightsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocationInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReviewReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reviewer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchChainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGoogleLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGoogleLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAreaBusiness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceBusinessContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Services
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecialHourPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecialHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartUploadMediaItemDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredServiceItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopDirectionSources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Transportation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpsertAnswerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Verification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerificationOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewsFromUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Wellness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Accessibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobility_accessible, as: 'mobilityAccessible'
          property :mobility_accessible_elevator, as: 'mobilityAccessibleElevator'
          property :mobility_accessible_elevator_exception, as: 'mobilityAccessibleElevatorException'
          property :mobility_accessible_exception, as: 'mobilityAccessibleException'
          property :mobility_accessible_parking, as: 'mobilityAccessibleParking'
          property :mobility_accessible_parking_exception, as: 'mobilityAccessibleParkingException'
          property :mobility_accessible_pool, as: 'mobilityAccessiblePool'
          property :mobility_accessible_pool_exception, as: 'mobilityAccessiblePoolException'
        end
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_name, as: 'accountName'
          property :account_number, as: 'accountNumber'
          property :name, as: 'name'
          property :organization_info, as: 'organizationInfo', class: Google::Apis::MybusinessV4::OrganizationInfo, decorator: Google::Apis::MybusinessV4::OrganizationInfo::Representation
      
          property :permission_level, as: 'permissionLevel'
          property :role, as: 'role'
          property :state, as: 'state', class: Google::Apis::MybusinessV4::AccountState, decorator: Google::Apis::MybusinessV4::AccountState::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AccountState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class Activities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beach_access, as: 'beachAccess'
          property :beach_access_exception, as: 'beachAccessException'
          property :beach_front, as: 'beachFront'
          property :beach_front_exception, as: 'beachFrontException'
          property :bicycle_rental, as: 'bicycleRental'
          property :bicycle_rental_exception, as: 'bicycleRentalException'
          property :boutique_stores, as: 'boutiqueStores'
          property :boutique_stores_exception, as: 'boutiqueStoresException'
          property :casino, as: 'casino'
          property :casino_exception, as: 'casinoException'
          property :free_bicycle_rental, as: 'freeBicycleRental'
          property :free_bicycle_rental_exception, as: 'freeBicycleRentalException'
          property :free_watercraft_rental, as: 'freeWatercraftRental'
          property :free_watercraft_rental_exception, as: 'freeWatercraftRentalException'
          property :game_room, as: 'gameRoom'
          property :game_room_exception, as: 'gameRoomException'
          property :golf, as: 'golf'
          property :golf_exception, as: 'golfException'
          property :horseback_riding, as: 'horsebackRiding'
          property :horseback_riding_exception, as: 'horsebackRidingException'
          property :nightclub, as: 'nightclub'
          property :nightclub_exception, as: 'nightclubException'
          property :private_beach, as: 'privateBeach'
          property :private_beach_exception, as: 'privateBeachException'
          property :scuba, as: 'scuba'
          property :scuba_exception, as: 'scubaException'
          property :snorkeling, as: 'snorkeling'
          property :snorkeling_exception, as: 'snorkelingException'
          property :tennis, as: 'tennis'
          property :tennis_exception, as: 'tennisException'
          property :water_skiing, as: 'waterSkiing'
          property :water_skiing_exception, as: 'waterSkiingException'
          property :watercraft_rental, as: 'watercraftRental'
          property :watercraft_rental_exception, as: 'watercraftRentalException'
        end
      end
      
      class AdWordsLocationExtensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_phone, as: 'adPhone'
        end
      end
      
      class AddressInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mailer_contact_name, as: 'mailerContactName'
        end
      end
      
      class AddressVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          property :business_name, as: 'businessName'
        end
      end
      
      class Admin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_name, as: 'adminName'
          property :name, as: 'name'
          property :pending_invitation, as: 'pendingInvitation'
          property :role, as: 'role'
        end
      end
      
      class Answer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::MybusinessV4::Author, decorator: Google::Apis::MybusinessV4::Author::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :text, as: 'text'
          property :update_time, as: 'updateTime'
          property :upvote_count, as: 'upvoteCount'
        end
      end
      
      class AssociateLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place_id, as: 'placeId'
        end
      end
      
      class Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :repeated_enum_value, as: 'repeatedEnumValue', class: Google::Apis::MybusinessV4::RepeatedEnumAttributeValue, decorator: Google::Apis::MybusinessV4::RepeatedEnumAttributeValue::Representation
      
          collection :url_values, as: 'urlValues', class: Google::Apis::MybusinessV4::UrlAttributeValue, decorator: Google::Apis::MybusinessV4::UrlAttributeValue::Representation
      
          property :value_type, as: 'valueType'
          collection :values, as: 'values'
        end
      end
      
      class AttributeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :display_name, as: 'displayName'
          property :group_display_name, as: 'groupDisplayName'
          property :is_deprecated, as: 'isDeprecated'
          property :is_repeatable, as: 'isRepeatable'
          collection :value_metadata, as: 'valueMetadata', class: Google::Apis::MybusinessV4::AttributeValueMetadata, decorator: Google::Apis::MybusinessV4::AttributeValueMetadata::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class AttributeValueMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :value, as: 'value'
        end
      end
      
      class Attribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_name, as: 'profileName'
          property :profile_photo_url, as: 'profilePhotoUrl'
          property :profile_url, as: 'profileUrl'
          property :takedown_url, as: 'takedownUrl'
        end
      end
      
      class Author
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :profile_photo_url, as: 'profilePhotoUrl'
          property :type, as: 'type'
        end
      end
      
      class BasicMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_requests, as: 'metricRequests', class: Google::Apis::MybusinessV4::MetricRequest, decorator: Google::Apis::MybusinessV4::MetricRequest::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::MybusinessV4::TimeRange, decorator: Google::Apis::MybusinessV4::TimeRange::Representation
      
        end
      end
      
      class BatchGetBusinessCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
        end
      end
      
      class BatchGetLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_names, as: 'locationNames'
        end
      end
      
      class BatchGetLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class BatchGetReviewsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_rating_only_reviews, as: 'ignoreRatingOnlyReviews'
          collection :location_names, as: 'locationNames'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class BatchGetReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_reviews, as: 'locationReviews', class: Google::Apis::MybusinessV4::LocationReview, decorator: Google::Apis::MybusinessV4::LocationReview::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Business
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_center, as: 'businessCenter'
          property :business_center_exception, as: 'businessCenterException'
          property :meeting_rooms, as: 'meetingRooms'
          property :meeting_rooms_count, as: 'meetingRoomsCount'
          property :meeting_rooms_count_exception, as: 'meetingRoomsCountException'
          property :meeting_rooms_exception, as: 'meetingRoomsException'
        end
      end
      
      class BusinessHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :periods, as: 'periods', class: Google::Apis::MybusinessV4::TimePeriod, decorator: Google::Apis::MybusinessV4::TimePeriod::Representation
      
        end
      end
      
      class CallToAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :url, as: 'url'
        end
      end
      
      class CaloriesFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_amount, as: 'lowerAmount'
          property :unit, as: 'unit'
          property :upper_amount, as: 'upperAmount'
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :display_name, as: 'displayName'
          collection :more_hours_types, as: 'moreHoursTypes', class: Google::Apis::MybusinessV4::MoreHoursType, decorator: Google::Apis::MybusinessV4::MoreHoursType::Representation
      
          collection :service_types, as: 'serviceTypes', class: Google::Apis::MybusinessV4::ServiceType, decorator: Google::Apis::MybusinessV4::ServiceType::Representation
      
        end
      end
      
      class Chain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chain_names, as: 'chainNames', class: Google::Apis::MybusinessV4::ChainName, decorator: Google::Apis::MybusinessV4::ChainName::Representation
      
          property :location_count, as: 'locationCount'
          property :name, as: 'name'
          collection :websites, as: 'websites', class: Google::Apis::MybusinessV4::ChainUrl, decorator: Google::Apis::MybusinessV4::ChainUrl::Representation
      
        end
      end
      
      class ChainName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
        end
      end
      
      class ChainUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class ClearLocationAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompleteVerificationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pin, as: 'pin'
        end
      end
      
      class CompleteVerificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
        end
      end
      
      class Connectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_wifi, as: 'freeWifi'
          property :free_wifi_exception, as: 'freeWifiException'
          property :public_area_wifi_available, as: 'publicAreaWifiAvailable'
          property :public_area_wifi_available_exception, as: 'publicAreaWifiAvailableException'
          property :public_internet_terminal, as: 'publicInternetTerminal'
          property :public_internet_terminal_exception, as: 'publicInternetTerminalException'
          property :wifi_available, as: 'wifiAvailable'
          property :wifi_available_exception, as: 'wifiAvailableException'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DeclineInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DimensionalMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_option, as: 'metricOption'
          property :time_dimension, as: 'timeDimension', class: Google::Apis::MybusinessV4::TimeDimension, decorator: Google::Apis::MybusinessV4::TimeDimension::Representation
      
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class Dimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height_pixels, as: 'heightPixels'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class DrivingDirectionMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :num_days, as: 'numDays'
        end
      end
      
      class Duplicate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access'
          property :location_name, as: 'locationName'
          property :place_id, as: 'placeId'
        end
      end
      
      class EmailInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
        end
      end
      
      class EmailVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :is_user_name_editable, as: 'isUserNameEditable'
          property :user_name, as: 'userName'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnhancedCleaning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commercial_grade_disinfectant_cleaning, as: 'commercialGradeDisinfectantCleaning'
          property :commercial_grade_disinfectant_cleaning_exception, as: 'commercialGradeDisinfectantCleaningException'
          property :common_areas_enhanced_cleaning, as: 'commonAreasEnhancedCleaning'
          property :common_areas_enhanced_cleaning_exception, as: 'commonAreasEnhancedCleaningException'
          property :employees_trained_cleaning_procedures, as: 'employeesTrainedCleaningProcedures'
          property :employees_trained_cleaning_procedures_exception, as: 'employeesTrainedCleaningProceduresException'
          property :employees_trained_thorough_hand_washing, as: 'employeesTrainedThoroughHandWashing'
          property :employees_trained_thorough_hand_washing_exception, as: 'employeesTrainedThoroughHandWashingException'
          property :employees_wear_protective_equipment, as: 'employeesWearProtectiveEquipment'
          property :employees_wear_protective_equipment_exception, as: 'employeesWearProtectiveEquipmentException'
          property :guest_rooms_enhanced_cleaning, as: 'guestRoomsEnhancedCleaning'
          property :guest_rooms_enhanced_cleaning_exception, as: 'guestRoomsEnhancedCleaningException'
        end
      end
      
      class Families
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :babysitting, as: 'babysitting'
          property :babysitting_exception, as: 'babysittingException'
          property :kids_activities, as: 'kidsActivities'
          property :kids_activities_exception, as: 'kidsActivitiesException'
          property :kids_club, as: 'kidsClub'
          property :kids_club_exception, as: 'kidsClubException'
        end
      end
      
      class FetchVerificationOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::MybusinessV4::ServiceBusinessContext, decorator: Google::Apis::MybusinessV4::ServiceBusinessContext::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class FetchVerificationOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::MybusinessV4::VerificationOption, decorator: Google::Apis::MybusinessV4::VerificationOption::Representation
      
        end
      end
      
      class FindMatchingLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :max_cache_duration, as: 'maxCacheDuration'
          property :num_results, as: 'numResults'
        end
      end
      
      class FindMatchingLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_time, as: 'matchTime'
          collection :matched_locations, as: 'matchedLocations', class: Google::Apis::MybusinessV4::MatchedLocation, decorator: Google::Apis::MybusinessV4::MatchedLocation::Representation
      
        end
      end
      
      class FollowersMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :name, as: 'name'
        end
      end
      
      class FoodAndDrink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bar, as: 'bar'
          property :bar_exception, as: 'barException'
          property :breakfast_available, as: 'breakfastAvailable'
          property :breakfast_available_exception, as: 'breakfastAvailableException'
          property :breakfast_buffet, as: 'breakfastBuffet'
          property :breakfast_buffet_exception, as: 'breakfastBuffetException'
          property :buffet, as: 'buffet'
          property :buffet_exception, as: 'buffetException'
          property :dinner_buffet, as: 'dinnerBuffet'
          property :dinner_buffet_exception, as: 'dinnerBuffetException'
          property :free_breakfast, as: 'freeBreakfast'
          property :free_breakfast_exception, as: 'freeBreakfastException'
          property :restaurant, as: 'restaurant'
          property :restaurant_exception, as: 'restaurantException'
          property :restaurants_count, as: 'restaurantsCount'
          property :restaurants_count_exception, as: 'restaurantsCountException'
          property :room_service, as: 'roomService'
          property :room_service_exception, as: 'roomServiceException'
          property :table_service, as: 'tableService'
          property :table_service_exception, as: 'tableServiceException'
          property :twenty_four_hour_room_service, as: 'twentyFourHourRoomService'
          property :twenty_four_hour_room_service_exception, as: 'twentyFourHourRoomServiceException'
          property :vending_machine, as: 'vendingMachine'
          property :vending_machine_exception, as: 'vendingMachineException'
        end
      end
      
      class FoodMenu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cuisines, as: 'cuisines'
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
          collection :sections, as: 'sections', class: Google::Apis::MybusinessV4::FoodMenuSection, decorator: Google::Apis::MybusinessV4::FoodMenuSection::Representation
      
          property :source_url, as: 'sourceUrl'
        end
      end
      
      class FoodMenuItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::FoodMenuItemAttributes, decorator: Google::Apis::MybusinessV4::FoodMenuItemAttributes::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
          collection :options, as: 'options', class: Google::Apis::MybusinessV4::FoodMenuItemOption, decorator: Google::Apis::MybusinessV4::FoodMenuItemOption::Representation
      
        end
      end
      
      class FoodMenuItemAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allergen, as: 'allergen'
          collection :dietary_restriction, as: 'dietaryRestriction'
          collection :ingredients, as: 'ingredients', class: Google::Apis::MybusinessV4::Ingredient, decorator: Google::Apis::MybusinessV4::Ingredient::Representation
      
          collection :media_keys, as: 'mediaKeys'
          property :nutrition_facts, as: 'nutritionFacts', class: Google::Apis::MybusinessV4::NutritionFacts, decorator: Google::Apis::MybusinessV4::NutritionFacts::Representation
      
          property :portion_size, as: 'portionSize', class: Google::Apis::MybusinessV4::PortionSize, decorator: Google::Apis::MybusinessV4::PortionSize::Representation
      
          collection :preparation_methods, as: 'preparationMethods'
          property :price, as: 'price', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
          property :serves_num_people, as: 'servesNumPeople'
          property :spiciness, as: 'spiciness'
        end
      end
      
      class FoodMenuItemOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::FoodMenuItemAttributes, decorator: Google::Apis::MybusinessV4::FoodMenuItemAttributes::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
        end
      end
      
      class FoodMenuSection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::MybusinessV4::FoodMenuItem, decorator: Google::Apis::MybusinessV4::FoodMenuItem::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
        end
      end
      
      class FoodMenus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :menus, as: 'menus', class: Google::Apis::MybusinessV4::FoodMenu, decorator: Google::Apis::MybusinessV4::FoodMenu::Representation
      
          property :name, as: 'name'
        end
      end
      
      class FreeFormServiceItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :label, as: 'label', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
        end
      end
      
      class GenerateAccountNumberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GetGoogleUpdatedLodgingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diff_mask, as: 'diffMask'
          property :lodging, as: 'lodging', class: Google::Apis::MybusinessV4::Lodging, decorator: Google::Apis::MybusinessV4::Lodging::Representation
      
        end
      end
      
      class GoogleLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :name, as: 'name'
          property :request_admin_rights_url, as: 'requestAdminRightsUrl'
        end
      end
      
      class GoogleUpdatedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diff_mask, as: 'diffMask'
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class GuestUnitFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bungalow_or_villa, as: 'bungalowOrVilla'
          property :bungalow_or_villa_exception, as: 'bungalowOrVillaException'
          property :connecting_unit_available, as: 'connectingUnitAvailable'
          property :connecting_unit_available_exception, as: 'connectingUnitAvailableException'
          property :executive_floor, as: 'executiveFloor'
          property :executive_floor_exception, as: 'executiveFloorException'
          property :max_adult_occupants_count, as: 'maxAdultOccupantsCount'
          property :max_adult_occupants_count_exception, as: 'maxAdultOccupantsCountException'
          property :max_child_occupants_count, as: 'maxChildOccupantsCount'
          property :max_child_occupants_count_exception, as: 'maxChildOccupantsCountException'
          property :max_occupants_count, as: 'maxOccupantsCount'
          property :max_occupants_count_exception, as: 'maxOccupantsCountException'
          property :private_home, as: 'privateHome'
          property :private_home_exception, as: 'privateHomeException'
          property :suite, as: 'suite'
          property :suite_exception, as: 'suiteException'
          property :tier, as: 'tier'
          property :tier_exception, as: 'tierException'
          property :total_living_areas, as: 'totalLivingAreas', class: Google::Apis::MybusinessV4::LivingArea, decorator: Google::Apis::MybusinessV4::LivingArea::Representation
      
          property :views, as: 'views', class: Google::Apis::MybusinessV4::ViewsFromUnit, decorator: Google::Apis::MybusinessV4::ViewsFromUnit::Representation
      
        end
      end
      
      class GuestUnitType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :codes, as: 'codes'
          property :features, as: 'features', class: Google::Apis::MybusinessV4::GuestUnitFeatures, decorator: Google::Apis::MybusinessV4::GuestUnitFeatures::Representation
      
          property :label, as: 'label'
        end
      end
      
      class HealthAndSafety
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enhanced_cleaning, as: 'enhancedCleaning', class: Google::Apis::MybusinessV4::EnhancedCleaning, decorator: Google::Apis::MybusinessV4::EnhancedCleaning::Representation
      
          property :increased_food_safety, as: 'increasedFoodSafety', class: Google::Apis::MybusinessV4::IncreasedFoodSafety, decorator: Google::Apis::MybusinessV4::IncreasedFoodSafety::Representation
      
          property :minimized_contact, as: 'minimizedContact', class: Google::Apis::MybusinessV4::MinimizedContact, decorator: Google::Apis::MybusinessV4::MinimizedContact::Representation
      
          property :personal_protection, as: 'personalProtection', class: Google::Apis::MybusinessV4::PersonalProtection, decorator: Google::Apis::MybusinessV4::PersonalProtection::Representation
      
          property :physical_distancing, as: 'physicalDistancing', class: Google::Apis::MybusinessV4::PhysicalDistancing, decorator: Google::Apis::MybusinessV4::PhysicalDistancing::Representation
      
        end
      end
      
      class HealthProviderAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insurance_networks, as: 'insuranceNetworks', class: Google::Apis::MybusinessV4::InsuranceNetwork, decorator: Google::Apis::MybusinessV4::InsuranceNetwork::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Housekeeping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :daily_housekeeping, as: 'dailyHousekeeping'
          property :daily_housekeeping_exception, as: 'dailyHousekeepingException'
          property :housekeeping_available, as: 'housekeepingAvailable'
          property :housekeeping_available_exception, as: 'housekeepingAvailableException'
          property :turndown_service, as: 'turndownService'
          property :turndown_service_exception, as: 'turndownServiceException'
        end
      end
      
      class IncreasedFoodSafety
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dining_areas_additional_sanitation, as: 'diningAreasAdditionalSanitation'
          property :dining_areas_additional_sanitation_exception, as: 'diningAreasAdditionalSanitationException'
          property :disposable_flatware, as: 'disposableFlatware'
          property :disposable_flatware_exception, as: 'disposableFlatwareException'
          property :food_preparation_and_serving_additional_safety, as: 'foodPreparationAndServingAdditionalSafety'
          property :food_preparation_and_serving_additional_safety_exception, as: 'foodPreparationAndServingAdditionalSafetyException'
          property :individual_packaged_meals, as: 'individualPackagedMeals'
          property :individual_packaged_meals_exception, as: 'individualPackagedMealsException'
          property :single_use_food_menus, as: 'singleUseFoodMenus'
          property :single_use_food_menus_exception, as: 'singleUseFoodMenusException'
        end
      end
      
      class Ingredient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
        end
      end
      
      class InsuranceNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_id, as: 'networkId'
          hash :network_names, as: 'networkNames'
          hash :payer_names, as: 'payerNames'
          property :state, as: 'state'
        end
      end
      
      class Invitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :role, as: 'role'
          property :target_account, as: 'targetAccount', class: Google::Apis::MybusinessV4::Account, decorator: Google::Apis::MybusinessV4::Account::Representation
      
          property :target_location, as: 'targetLocation', class: Google::Apis::MybusinessV4::TargetLocation, decorator: Google::Apis::MybusinessV4::TargetLocation::Representation
      
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :price, as: 'price', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
        end
      end
      
      class LanguagesSpoken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arabic_spoken, as: 'arabicSpoken'
          property :arabic_spoken_exception, as: 'arabicSpokenException'
          property :cantonese_spoken, as: 'cantoneseSpoken'
          property :cantonese_spoken_exception, as: 'cantoneseSpokenException'
          property :dutch_spoken, as: 'dutchSpoken'
          property :dutch_spoken_exception, as: 'dutchSpokenException'
          property :english_spoken, as: 'englishSpoken'
          property :english_spoken_exception, as: 'englishSpokenException'
          property :filipino_spoken, as: 'filipinoSpoken'
          property :filipino_spoken_exception, as: 'filipinoSpokenException'
          property :french_spoken, as: 'frenchSpoken'
          property :french_spoken_exception, as: 'frenchSpokenException'
          property :german_spoken, as: 'germanSpoken'
          property :german_spoken_exception, as: 'germanSpokenException'
          property :hindi_spoken, as: 'hindiSpoken'
          property :hindi_spoken_exception, as: 'hindiSpokenException'
          property :indonesian_spoken, as: 'indonesianSpoken'
          property :indonesian_spoken_exception, as: 'indonesianSpokenException'
          property :italian_spoken, as: 'italianSpoken'
          property :italian_spoken_exception, as: 'italianSpokenException'
          property :japanese_spoken, as: 'japaneseSpoken'
          property :japanese_spoken_exception, as: 'japaneseSpokenException'
          property :korean_spoken, as: 'koreanSpoken'
          property :korean_spoken_exception, as: 'koreanSpokenException'
          property :mandarin_spoken, as: 'mandarinSpoken'
          property :mandarin_spoken_exception, as: 'mandarinSpokenException'
          property :portuguese_spoken, as: 'portugueseSpoken'
          property :portuguese_spoken_exception, as: 'portugueseSpokenException'
          property :russian_spoken, as: 'russianSpoken'
          property :russian_spoken_exception, as: 'russianSpokenException'
          property :spanish_spoken, as: 'spanishSpoken'
          property :spanish_spoken_exception, as: 'spanishSpokenException'
          property :vietnamese_spoken, as: 'vietnameseSpoken'
          property :vietnamese_spoken_exception, as: 'vietnameseSpokenException'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListAccountAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV4::Admin, decorator: Google::Apis::MybusinessV4::Admin::Representation
      
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MybusinessV4::Account, decorator: Google::Apis::MybusinessV4::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::MybusinessV4::Answer, decorator: Google::Apis::MybusinessV4::Answer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListAttributeMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::AttributeMetadata, decorator: Google::Apis::MybusinessV4::AttributeMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBusinessCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_category_count, as: 'totalCategoryCount'
        end
      end
      
      class ListCustomerMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_items, as: 'mediaItems', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_media_item_count, as: 'totalMediaItemCount'
        end
      end
      
      class ListInsuranceNetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :networks, as: 'networks', class: Google::Apis::MybusinessV4::InsuranceNetwork, decorator: Google::Apis::MybusinessV4::InsuranceNetwork::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::MybusinessV4::Invitation, decorator: Google::Apis::MybusinessV4::Invitation::Representation
      
        end
      end
      
      class ListLocalPostsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_posts, as: 'localPosts', class: Google::Apis::MybusinessV4::LocalPost, decorator: Google::Apis::MybusinessV4::LocalPost::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV4::Admin, decorator: Google::Apis::MybusinessV4::Admin::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_items, as: 'mediaItems', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_media_item_count, as: 'totalMediaItemCount'
        end
      end
      
      class ListQuestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :questions, as: 'questions', class: Google::Apis::MybusinessV4::Question, decorator: Google::Apis::MybusinessV4::Question::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListRecommendedGoogleLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_locations, as: 'googleLocations', class: Google::Apis::MybusinessV4::GoogleLocation, decorator: Google::Apis::MybusinessV4::GoogleLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :next_page_token, as: 'nextPageToken'
          collection :reviews, as: 'reviews', class: Google::Apis::MybusinessV4::Review, decorator: Google::Apis::MybusinessV4::Review::Representation
      
          property :total_review_count, as: 'totalReviewCount'
        end
      end
      
      class ListVerificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :verifications, as: 'verifications', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
        end
      end
      
      class LivingArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility, as: 'accessibility', class: Google::Apis::MybusinessV4::LivingAreaAccessibility, decorator: Google::Apis::MybusinessV4::LivingAreaAccessibility::Representation
      
          property :eating, as: 'eating', class: Google::Apis::MybusinessV4::LivingAreaEating, decorator: Google::Apis::MybusinessV4::LivingAreaEating::Representation
      
          property :features, as: 'features', class: Google::Apis::MybusinessV4::LivingAreaFeatures, decorator: Google::Apis::MybusinessV4::LivingAreaFeatures::Representation
      
          property :layout, as: 'layout', class: Google::Apis::MybusinessV4::LivingAreaLayout, decorator: Google::Apis::MybusinessV4::LivingAreaLayout::Representation
      
          property :sleeping, as: 'sleeping', class: Google::Apis::MybusinessV4::LivingAreaSleeping, decorator: Google::Apis::MybusinessV4::LivingAreaSleeping::Representation
      
        end
      end
      
      class LivingAreaAccessibility
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ada_compliant_unit, as: 'adaCompliantUnit'
          property :ada_compliant_unit_exception, as: 'adaCompliantUnitException'
          property :hearing_accessible_doorbell, as: 'hearingAccessibleDoorbell'
          property :hearing_accessible_doorbell_exception, as: 'hearingAccessibleDoorbellException'
          property :hearing_accessible_fire_alarm, as: 'hearingAccessibleFireAlarm'
          property :hearing_accessible_fire_alarm_exception, as: 'hearingAccessibleFireAlarmException'
          property :hearing_accessible_unit, as: 'hearingAccessibleUnit'
          property :hearing_accessible_unit_exception, as: 'hearingAccessibleUnitException'
          property :mobility_accessible_bathtub, as: 'mobilityAccessibleBathtub'
          property :mobility_accessible_bathtub_exception, as: 'mobilityAccessibleBathtubException'
          property :mobility_accessible_shower, as: 'mobilityAccessibleShower'
          property :mobility_accessible_shower_exception, as: 'mobilityAccessibleShowerException'
          property :mobility_accessible_toilet, as: 'mobilityAccessibleToilet'
          property :mobility_accessible_toilet_exception, as: 'mobilityAccessibleToiletException'
          property :mobility_accessible_unit, as: 'mobilityAccessibleUnit'
          property :mobility_accessible_unit_exception, as: 'mobilityAccessibleUnitException'
        end
      end
      
      class LivingAreaEating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coffee_maker, as: 'coffeeMaker'
          property :coffee_maker_exception, as: 'coffeeMakerException'
          property :cookware, as: 'cookware'
          property :cookware_exception, as: 'cookwareException'
          property :dishwasher, as: 'dishwasher'
          property :dishwasher_exception, as: 'dishwasherException'
          property :indoor_grill, as: 'indoorGrill'
          property :indoor_grill_exception, as: 'indoorGrillException'
          property :kettle, as: 'kettle'
          property :kettle_exception, as: 'kettleException'
          property :kitchen_available, as: 'kitchenAvailable'
          property :kitchen_available_exception, as: 'kitchenAvailableException'
          property :microwave, as: 'microwave'
          property :microwave_exception, as: 'microwaveException'
          property :minibar, as: 'minibar'
          property :minibar_exception, as: 'minibarException'
          property :outdoor_grill, as: 'outdoorGrill'
          property :outdoor_grill_exception, as: 'outdoorGrillException'
          property :oven, as: 'oven'
          property :oven_exception, as: 'ovenException'
          property :refrigerator, as: 'refrigerator'
          property :refrigerator_exception, as: 'refrigeratorException'
          property :sink, as: 'sink'
          property :sink_exception, as: 'sinkException'
          property :snackbar, as: 'snackbar'
          property :snackbar_exception, as: 'snackbarException'
          property :stove, as: 'stove'
          property :stove_exception, as: 'stoveException'
          property :tea_station, as: 'teaStation'
          property :tea_station_exception, as: 'teaStationException'
          property :toaster, as: 'toaster'
          property :toaster_exception, as: 'toasterException'
        end
      end
      
      class LivingAreaFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :air_conditioning, as: 'airConditioning'
          property :air_conditioning_exception, as: 'airConditioningException'
          property :bathtub, as: 'bathtub'
          property :bathtub_exception, as: 'bathtubException'
          property :bidet, as: 'bidet'
          property :bidet_exception, as: 'bidetException'
          property :dryer, as: 'dryer'
          property :dryer_exception, as: 'dryerException'
          property :electronic_room_key, as: 'electronicRoomKey'
          property :electronic_room_key_exception, as: 'electronicRoomKeyException'
          property :fireplace, as: 'fireplace'
          property :fireplace_exception, as: 'fireplaceException'
          property :hairdryer, as: 'hairdryer'
          property :hairdryer_exception, as: 'hairdryerException'
          property :heating, as: 'heating'
          property :heating_exception, as: 'heatingException'
          property :inunit_safe, as: 'inunitSafe'
          property :inunit_safe_exception, as: 'inunitSafeException'
          property :inunit_wifi_available, as: 'inunitWifiAvailable'
          property :inunit_wifi_available_exception, as: 'inunitWifiAvailableException'
          property :ironing_equipment, as: 'ironingEquipment'
          property :ironing_equipment_exception, as: 'ironingEquipmentException'
          property :pay_per_view_movies, as: 'payPerViewMovies'
          property :pay_per_view_movies_exception, as: 'payPerViewMoviesException'
          property :private_bathroom, as: 'privateBathroom'
          property :private_bathroom_exception, as: 'privateBathroomException'
          property :shower, as: 'shower'
          property :shower_exception, as: 'showerException'
          property :toilet, as: 'toilet'
          property :toilet_exception, as: 'toiletException'
          property :tv, as: 'tv'
          property :tv_casting, as: 'tvCasting'
          property :tv_casting_exception, as: 'tvCastingException'
          property :tv_exception, as: 'tvException'
          property :tv_streaming, as: 'tvStreaming'
          property :tv_streaming_exception, as: 'tvStreamingException'
          property :universal_power_adapters, as: 'universalPowerAdapters'
          property :universal_power_adapters_exception, as: 'universalPowerAdaptersException'
          property :washer, as: 'washer'
          property :washer_exception, as: 'washerException'
        end
      end
      
      class LivingAreaLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balcony, as: 'balcony'
          property :balcony_exception, as: 'balconyException'
          property :living_area_sq_meters, as: 'livingAreaSqMeters'
          property :living_area_sq_meters_exception, as: 'livingAreaSqMetersException'
          property :loft, as: 'loft'
          property :loft_exception, as: 'loftException'
          property :non_smoking, as: 'nonSmoking'
          property :non_smoking_exception, as: 'nonSmokingException'
          property :patio, as: 'patio'
          property :patio_exception, as: 'patioException'
          property :stairs, as: 'stairs'
          property :stairs_exception, as: 'stairsException'
        end
      end
      
      class LivingAreaSleeping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beds_count, as: 'bedsCount'
          property :beds_count_exception, as: 'bedsCountException'
          property :bunk_beds_count, as: 'bunkBedsCount'
          property :bunk_beds_count_exception, as: 'bunkBedsCountException'
          property :cribs_count, as: 'cribsCount'
          property :cribs_count_exception, as: 'cribsCountException'
          property :double_beds_count, as: 'doubleBedsCount'
          property :double_beds_count_exception, as: 'doubleBedsCountException'
          property :feather_pillows, as: 'featherPillows'
          property :feather_pillows_exception, as: 'featherPillowsException'
          property :hypoallergenic_bedding, as: 'hypoallergenicBedding'
          property :hypoallergenic_bedding_exception, as: 'hypoallergenicBeddingException'
          property :king_beds_count, as: 'kingBedsCount'
          property :king_beds_count_exception, as: 'kingBedsCountException'
          property :memory_foam_pillows, as: 'memoryFoamPillows'
          property :memory_foam_pillows_exception, as: 'memoryFoamPillowsException'
          property :other_beds_count, as: 'otherBedsCount'
          property :other_beds_count_exception, as: 'otherBedsCountException'
          property :queen_beds_count, as: 'queenBedsCount'
          property :queen_beds_count_exception, as: 'queenBedsCountException'
          property :roll_away_beds_count, as: 'rollAwayBedsCount'
          property :roll_away_beds_count_exception, as: 'rollAwayBedsCountException'
          property :single_or_twin_beds_count, as: 'singleOrTwinBedsCount'
          property :single_or_twin_beds_count_exception, as: 'singleOrTwinBedsCountException'
          property :sofa_beds_count, as: 'sofaBedsCount'
          property :sofa_beds_count_exception, as: 'sofaBedsCountException'
          property :synthetic_pillows, as: 'syntheticPillows'
          property :synthetic_pillows_exception, as: 'syntheticPillowsException'
        end
      end
      
      class LocalPost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_type, as: 'alertType'
          property :call_to_action, as: 'callToAction', class: Google::Apis::MybusinessV4::CallToAction, decorator: Google::Apis::MybusinessV4::CallToAction::Representation
      
          property :create_time, as: 'createTime'
          property :event, as: 'event', class: Google::Apis::MybusinessV4::LocalPostEvent, decorator: Google::Apis::MybusinessV4::LocalPostEvent::Representation
      
          property :language_code, as: 'languageCode'
          collection :media, as: 'media', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :name, as: 'name'
          property :offer, as: 'offer', class: Google::Apis::MybusinessV4::LocalPostOffer, decorator: Google::Apis::MybusinessV4::LocalPostOffer::Representation
      
          property :search_url, as: 'searchUrl'
          property :state, as: 'state'
          property :summary, as: 'summary'
          property :topic_type, as: 'topicType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LocalPostEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule, as: 'schedule', class: Google::Apis::MybusinessV4::TimeInterval, decorator: Google::Apis::MybusinessV4::TimeInterval::Representation
      
          property :title, as: 'title'
        end
      end
      
      class LocalPostMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_post_name, as: 'localPostName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::MybusinessV4::MetricValue, decorator: Google::Apis::MybusinessV4::MetricValue::Representation
      
        end
      end
      
      class LocalPostOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coupon_code, as: 'couponCode'
          property :redeem_online_url, as: 'redeemOnlineUrl'
          property :terms_conditions, as: 'termsConditions'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_words_location_extensions, as: 'adWordsLocationExtensions', class: Google::Apis::MybusinessV4::AdWordsLocationExtensions, decorator: Google::Apis::MybusinessV4::AdWordsLocationExtensions::Representation
      
          collection :additional_categories, as: 'additionalCategories', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          collection :additional_phones, as: 'additionalPhones'
          property :address, as: 'address', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::Attribute, decorator: Google::Apis::MybusinessV4::Attribute::Representation
      
          collection :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
          property :location_key, as: 'locationKey', class: Google::Apis::MybusinessV4::LocationKey, decorator: Google::Apis::MybusinessV4::LocationKey::Representation
      
          property :location_name, as: 'locationName'
          property :location_state, as: 'locationState', class: Google::Apis::MybusinessV4::LocationState, decorator: Google::Apis::MybusinessV4::LocationState::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::MybusinessV4::Metadata, decorator: Google::Apis::MybusinessV4::Metadata::Representation
      
          collection :more_hours, as: 'moreHours', class: Google::Apis::MybusinessV4::MoreHours, decorator: Google::Apis::MybusinessV4::MoreHours::Representation
      
          property :name, as: 'name'
          property :open_info, as: 'openInfo', class: Google::Apis::MybusinessV4::OpenInfo, decorator: Google::Apis::MybusinessV4::OpenInfo::Representation
      
          collection :price_lists, as: 'priceLists', class: Google::Apis::MybusinessV4::PriceList, decorator: Google::Apis::MybusinessV4::PriceList::Representation
      
          property :primary_category, as: 'primaryCategory', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          property :primary_phone, as: 'primaryPhone'
          property :profile, as: 'profile', class: Google::Apis::MybusinessV4::Profile, decorator: Google::Apis::MybusinessV4::Profile::Representation
      
          property :regular_hours, as: 'regularHours', class: Google::Apis::MybusinessV4::BusinessHours, decorator: Google::Apis::MybusinessV4::BusinessHours::Representation
      
          property :relationship_data, as: 'relationshipData', class: Google::Apis::MybusinessV4::RelationshipData, decorator: Google::Apis::MybusinessV4::RelationshipData::Representation
      
          property :service_area, as: 'serviceArea', class: Google::Apis::MybusinessV4::ServiceAreaBusiness, decorator: Google::Apis::MybusinessV4::ServiceAreaBusiness::Representation
      
          property :special_hours, as: 'specialHours', class: Google::Apis::MybusinessV4::SpecialHours, decorator: Google::Apis::MybusinessV4::SpecialHours::Representation
      
          property :store_code, as: 'storeCode'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class LocationAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :price_list_item_id, as: 'priceListItemId'
        end
      end
      
      class LocationDrivingDirectionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_name, as: 'locationName'
          property :time_zone, as: 'timeZone'
          collection :top_direction_sources, as: 'topDirectionSources', class: Google::Apis::MybusinessV4::TopDirectionSources, decorator: Google::Apis::MybusinessV4::TopDirectionSources::Representation
      
        end
      end
      
      class LocationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_no_place_id, as: 'explicitNoPlaceId'
          property :place_id, as: 'placeId'
          property :plus_page_id, as: 'plusPageId'
          property :request_id, as: 'requestId'
        end
      end
      
      class LocationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_name, as: 'locationName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::MybusinessV4::MetricValue, decorator: Google::Apis::MybusinessV4::MetricValue::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class LocationReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :review, as: 'review', class: Google::Apis::MybusinessV4::Review, decorator: Google::Apis::MybusinessV4::Review::Representation
      
        end
      end
      
      class LocationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_have_food_menus, as: 'canHaveFoodMenus'
          property :can_modify_service_list, as: 'canModifyServiceList'
          property :can_operate_health_data, as: 'canOperateHealthData'
          property :can_operate_lodging_data, as: 'canOperateLodgingData'
          property :can_update, as: 'canUpdate'
          property :has_pending_edits, as: 'hasPendingEdits'
          property :has_pending_verification, as: 'hasPendingVerification'
          property :is_disabled, as: 'isDisabled'
          property :is_disconnected, as: 'isDisconnected'
          property :is_duplicate, as: 'isDuplicate'
          property :is_google_updated, as: 'isGoogleUpdated'
          property :is_local_post_api_disabled, as: 'isLocalPostApiDisabled'
          property :is_pending_review, as: 'isPendingReview'
          property :is_published, as: 'isPublished'
          property :is_suspended, as: 'isSuspended'
          property :is_verified, as: 'isVerified'
          property :needs_reverification, as: 'needsReverification'
        end
      end
      
      class Lodging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility, as: 'accessibility', class: Google::Apis::MybusinessV4::Accessibility, decorator: Google::Apis::MybusinessV4::Accessibility::Representation
      
          property :activities, as: 'activities', class: Google::Apis::MybusinessV4::Activities, decorator: Google::Apis::MybusinessV4::Activities::Representation
      
          property :all_units, as: 'allUnits', class: Google::Apis::MybusinessV4::GuestUnitFeatures, decorator: Google::Apis::MybusinessV4::GuestUnitFeatures::Representation
      
          property :business, as: 'business', class: Google::Apis::MybusinessV4::Business, decorator: Google::Apis::MybusinessV4::Business::Representation
      
          property :common_living_area, as: 'commonLivingArea', class: Google::Apis::MybusinessV4::LivingArea, decorator: Google::Apis::MybusinessV4::LivingArea::Representation
      
          property :connectivity, as: 'connectivity', class: Google::Apis::MybusinessV4::Connectivity, decorator: Google::Apis::MybusinessV4::Connectivity::Representation
      
          property :families, as: 'families', class: Google::Apis::MybusinessV4::Families, decorator: Google::Apis::MybusinessV4::Families::Representation
      
          property :food_and_drink, as: 'foodAndDrink', class: Google::Apis::MybusinessV4::FoodAndDrink, decorator: Google::Apis::MybusinessV4::FoodAndDrink::Representation
      
          collection :guest_units, as: 'guestUnits', class: Google::Apis::MybusinessV4::GuestUnitType, decorator: Google::Apis::MybusinessV4::GuestUnitType::Representation
      
          property :health_and_safety, as: 'healthAndSafety', class: Google::Apis::MybusinessV4::HealthAndSafety, decorator: Google::Apis::MybusinessV4::HealthAndSafety::Representation
      
          property :housekeeping, as: 'housekeeping', class: Google::Apis::MybusinessV4::Housekeeping, decorator: Google::Apis::MybusinessV4::Housekeeping::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::MybusinessV4::LodgingMetadata, decorator: Google::Apis::MybusinessV4::LodgingMetadata::Representation
      
          property :name, as: 'name'
          property :parking, as: 'parking', class: Google::Apis::MybusinessV4::Parking, decorator: Google::Apis::MybusinessV4::Parking::Representation
      
          property :pets, as: 'pets', class: Google::Apis::MybusinessV4::Pets, decorator: Google::Apis::MybusinessV4::Pets::Representation
      
          property :policies, as: 'policies', class: Google::Apis::MybusinessV4::Policies, decorator: Google::Apis::MybusinessV4::Policies::Representation
      
          property :pools, as: 'pools', class: Google::Apis::MybusinessV4::Pools, decorator: Google::Apis::MybusinessV4::Pools::Representation
      
          property :property, as: 'property', class: Google::Apis::MybusinessV4::Property, decorator: Google::Apis::MybusinessV4::Property::Representation
      
          property :services, as: 'services', class: Google::Apis::MybusinessV4::Services, decorator: Google::Apis::MybusinessV4::Services::Representation
      
          property :some_units, as: 'someUnits', class: Google::Apis::MybusinessV4::GuestUnitFeatures, decorator: Google::Apis::MybusinessV4::GuestUnitFeatures::Representation
      
          property :transportation, as: 'transportation', class: Google::Apis::MybusinessV4::Transportation, decorator: Google::Apis::MybusinessV4::Transportation::Representation
      
          property :wellness, as: 'wellness', class: Google::Apis::MybusinessV4::Wellness, decorator: Google::Apis::MybusinessV4::Wellness::Representation
      
        end
      end
      
      class LodgingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
        end
      end
      
      class MatchedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_exact_match, as: 'isExactMatch'
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class MediaInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :view_count, :numeric_string => true, as: 'viewCount'
        end
      end
      
      class MediaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution, as: 'attribution', class: Google::Apis::MybusinessV4::Attribution, decorator: Google::Apis::MybusinessV4::Attribution::Representation
      
          property :create_time, as: 'createTime'
          property :data_ref, as: 'dataRef', class: Google::Apis::MybusinessV4::MediaItemDataRef, decorator: Google::Apis::MybusinessV4::MediaItemDataRef::Representation
      
          property :description, as: 'description'
          property :dimensions, as: 'dimensions', class: Google::Apis::MybusinessV4::Dimensions, decorator: Google::Apis::MybusinessV4::Dimensions::Representation
      
          property :google_url, as: 'googleUrl'
          property :insights, as: 'insights', class: Google::Apis::MybusinessV4::MediaInsights, decorator: Google::Apis::MybusinessV4::MediaInsights::Representation
      
          property :location_association, as: 'locationAssociation', class: Google::Apis::MybusinessV4::LocationAssociation, decorator: Google::Apis::MybusinessV4::LocationAssociation::Representation
      
          property :media_format, as: 'mediaFormat'
          property :name, as: 'name'
          property :source_url, as: 'sourceUrl'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class MediaItemDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class MenuLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicate, as: 'duplicate', class: Google::Apis::MybusinessV4::Duplicate, decorator: Google::Apis::MybusinessV4::Duplicate::Representation
      
          property :maps_url, as: 'mapsUrl'
          property :new_review_url, as: 'newReviewUrl'
        end
      end
      
      class MetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          collection :options, as: 'options'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensional_values, as: 'dimensionalValues', class: Google::Apis::MybusinessV4::DimensionalMetricValue, decorator: Google::Apis::MybusinessV4::DimensionalMetricValue::Representation
      
          property :metric, as: 'metric'
          property :total_value, as: 'totalValue', class: Google::Apis::MybusinessV4::DimensionalMetricValue, decorator: Google::Apis::MybusinessV4::DimensionalMetricValue::Representation
      
        end
      end
      
      class MinimizedContact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contactless_checkin_checkout, as: 'contactlessCheckinCheckout'
          property :contactless_checkin_checkout_exception, as: 'contactlessCheckinCheckoutException'
          property :digital_guest_room_keys, as: 'digitalGuestRoomKeys'
          property :digital_guest_room_keys_exception, as: 'digitalGuestRoomKeysException'
          property :housekeeping_scheduled_request_only, as: 'housekeepingScheduledRequestOnly'
          property :housekeeping_scheduled_request_only_exception, as: 'housekeepingScheduledRequestOnlyException'
          property :no_high_touch_items_common_areas, as: 'noHighTouchItemsCommonAreas'
          property :no_high_touch_items_common_areas_exception, as: 'noHighTouchItemsCommonAreasException'
          property :no_high_touch_items_guest_rooms, as: 'noHighTouchItemsGuestRooms'
          property :no_high_touch_items_guest_rooms_exception, as: 'noHighTouchItemsGuestRoomsException'
          property :plastic_keycards_disinfected, as: 'plasticKeycardsDisinfected'
          property :plastic_keycards_disinfected_exception, as: 'plasticKeycardsDisinfectedException'
          property :room_bookings_buffer, as: 'roomBookingsBuffer'
          property :room_bookings_buffer_exception, as: 'roomBookingsBufferException'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class MoreHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours_type_id, as: 'hoursTypeId'
          collection :periods, as: 'periods', class: Google::Apis::MybusinessV4::TimePeriod, decorator: Google::Apis::MybusinessV4::TimePeriod::Representation
      
        end
      end
      
      class MoreHoursType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :hours_type_id, as: 'hoursTypeId'
          property :localized_display_name, as: 'localizedDisplayName'
        end
      end
      
      class Notifications
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :notification_types, as: 'notificationTypes'
          property :topic_name, as: 'topicName'
        end
      end
      
      class NutritionFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_amount, as: 'lowerAmount'
          property :unit, as: 'unit'
          property :upper_amount, as: 'upperAmount'
        end
      end
      
      class NutritionFacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :calories, as: 'calories', class: Google::Apis::MybusinessV4::CaloriesFact, decorator: Google::Apis::MybusinessV4::CaloriesFact::Representation
      
          property :cholesterol, as: 'cholesterol', class: Google::Apis::MybusinessV4::NutritionFact, decorator: Google::Apis::MybusinessV4::NutritionFact::Representation
      
          property :protein, as: 'protein', class: Google::Apis::MybusinessV4::NutritionFact, decorator: Google::Apis::MybusinessV4::NutritionFact::Representation
      
          property :sodium, as: 'sodium', class: Google::Apis::MybusinessV4::NutritionFact, decorator: Google::Apis::MybusinessV4::NutritionFact::Representation
      
          property :total_carbohydrate, as: 'totalCarbohydrate', class: Google::Apis::MybusinessV4::NutritionFact, decorator: Google::Apis::MybusinessV4::NutritionFact::Representation
      
          property :total_fat, as: 'totalFat', class: Google::Apis::MybusinessV4::NutritionFact, decorator: Google::Apis::MybusinessV4::NutritionFact::Representation
      
        end
      end
      
      class OpenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reopen, as: 'canReopen'
          property :opening_date, as: 'openingDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :status, as: 'status'
        end
      end
      
      class OrganizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
          property :postal_address, as: 'postalAddress', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          property :registered_domain, as: 'registeredDomain'
        end
      end
      
      class Parking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :electric_car_charging_stations, as: 'electricCarChargingStations'
          property :electric_car_charging_stations_exception, as: 'electricCarChargingStationsException'
          property :free_parking, as: 'freeParking'
          property :free_parking_exception, as: 'freeParkingException'
          property :free_self_parking, as: 'freeSelfParking'
          property :free_self_parking_exception, as: 'freeSelfParkingException'
          property :free_valet_parking, as: 'freeValetParking'
          property :free_valet_parking_exception, as: 'freeValetParkingException'
          property :parking_available, as: 'parkingAvailable'
          property :parking_available_exception, as: 'parkingAvailableException'
          property :self_parking_available, as: 'selfParkingAvailable'
          property :self_parking_available_exception, as: 'selfParkingAvailableException'
          property :valet_parking_available, as: 'valetParkingAvailable'
          property :valet_parking_available_exception, as: 'valetParkingAvailableException'
        end
      end
      
      class PaymentOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cash, as: 'cash'
          property :cash_exception, as: 'cashException'
          property :cheque, as: 'cheque'
          property :cheque_exception, as: 'chequeException'
          property :credit_card, as: 'creditCard'
          property :credit_card_exception, as: 'creditCardException'
          property :debit_card, as: 'debitCard'
          property :debit_card_exception, as: 'debitCardException'
          property :mobile_nfc, as: 'mobileNfc'
          property :mobile_nfc_exception, as: 'mobileNfcException'
        end
      end
      
      class PersonalProtection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_areas_offer_sanitizing_items, as: 'commonAreasOfferSanitizingItems'
          property :common_areas_offer_sanitizing_items_exception, as: 'commonAreasOfferSanitizingItemsException'
          property :face_mask_required, as: 'faceMaskRequired'
          property :face_mask_required_exception, as: 'faceMaskRequiredException'
          property :guest_room_hygiene_kits_available, as: 'guestRoomHygieneKitsAvailable'
          property :guest_room_hygiene_kits_available_exception, as: 'guestRoomHygieneKitsAvailableException'
          property :protective_equipment_available, as: 'protectiveEquipmentAvailable'
          property :protective_equipment_available_exception, as: 'protectiveEquipmentAvailableException'
        end
      end
      
      class Pets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cats_allowed, as: 'catsAllowed'
          property :cats_allowed_exception, as: 'catsAllowedException'
          property :dogs_allowed, as: 'dogsAllowed'
          property :dogs_allowed_exception, as: 'dogsAllowedException'
          property :pets_allowed, as: 'petsAllowed'
          property :pets_allowed_exception, as: 'petsAllowedException'
          property :pets_allowed_free, as: 'petsAllowedFree'
          property :pets_allowed_free_exception, as: 'petsAllowedFreeException'
        end
      end
      
      class PhoneInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class PhoneVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class PhysicalDistancing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_areas_physical_distancing_arranged, as: 'commonAreasPhysicalDistancingArranged'
          property :common_areas_physical_distancing_arranged_exception, as: 'commonAreasPhysicalDistancingArrangedException'
          property :physical_distancing_required, as: 'physicalDistancingRequired'
          property :physical_distancing_required_exception, as: 'physicalDistancingRequiredException'
          property :safety_dividers, as: 'safetyDividers'
          property :safety_dividers_exception, as: 'safetyDividersException'
          property :shared_areas_limited_occupancy, as: 'sharedAreasLimitedOccupancy'
          property :shared_areas_limited_occupancy_exception, as: 'sharedAreasLimitedOccupancyException'
          property :wellness_areas_have_private_spaces, as: 'wellnessAreasHavePrivateSpaces'
          property :wellness_areas_have_private_spaces_exception, as: 'wellnessAreasHavePrivateSpacesException'
        end
      end
      
      class PlaceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :place_id, as: 'placeId'
        end
      end
      
      class Places
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_infos, as: 'placeInfos', class: Google::Apis::MybusinessV4::PlaceInfo, decorator: Google::Apis::MybusinessV4::PlaceInfo::Representation
      
        end
      end
      
      class PointRadius
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
          property :radius_km, as: 'radiusKm'
        end
      end
      
      class Policies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_inclusive_available, as: 'allInclusiveAvailable'
          property :all_inclusive_available_exception, as: 'allInclusiveAvailableException'
          property :all_inclusive_only, as: 'allInclusiveOnly'
          property :all_inclusive_only_exception, as: 'allInclusiveOnlyException'
          property :checkin_time, as: 'checkinTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :checkin_time_exception, as: 'checkinTimeException'
          property :checkout_time, as: 'checkoutTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :checkout_time_exception, as: 'checkoutTimeException'
          property :kids_stay_free, as: 'kidsStayFree'
          property :kids_stay_free_exception, as: 'kidsStayFreeException'
          property :max_child_age, as: 'maxChildAge'
          property :max_child_age_exception, as: 'maxChildAgeException'
          property :max_kids_stay_free_count, as: 'maxKidsStayFreeCount'
          property :max_kids_stay_free_count_exception, as: 'maxKidsStayFreeCountException'
          property :payment_options, as: 'paymentOptions', class: Google::Apis::MybusinessV4::PaymentOptions, decorator: Google::Apis::MybusinessV4::PaymentOptions::Representation
      
          property :smoke_free_property, as: 'smokeFreeProperty'
          property :smoke_free_property_exception, as: 'smokeFreePropertyException'
        end
      end
      
      class Pools
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adult_pool, as: 'adultPool'
          property :adult_pool_exception, as: 'adultPoolException'
          property :hot_tub, as: 'hotTub'
          property :hot_tub_exception, as: 'hotTubException'
          property :indoor_pool, as: 'indoorPool'
          property :indoor_pool_exception, as: 'indoorPoolException'
          property :indoor_pools_count, as: 'indoorPoolsCount'
          property :indoor_pools_count_exception, as: 'indoorPoolsCountException'
          property :lazy_river, as: 'lazyRiver'
          property :lazy_river_exception, as: 'lazyRiverException'
          property :lifeguard, as: 'lifeguard'
          property :lifeguard_exception, as: 'lifeguardException'
          property :outdoor_pool, as: 'outdoorPool'
          property :outdoor_pool_exception, as: 'outdoorPoolException'
          property :outdoor_pools_count, as: 'outdoorPoolsCount'
          property :outdoor_pools_count_exception, as: 'outdoorPoolsCountException'
          property :pool, as: 'pool'
          property :pool_exception, as: 'poolException'
          property :pools_count, as: 'poolsCount'
          property :pools_count_exception, as: 'poolsCountException'
          property :wading_pool, as: 'wadingPool'
          property :wading_pool_exception, as: 'wadingPoolException'
          property :water_park, as: 'waterPark'
          property :water_park_exception, as: 'waterParkException'
          property :waterslide, as: 'waterslide'
          property :waterslide_exception, as: 'waterslideException'
          property :wave_pool, as: 'wavePool'
          property :wave_pool_exception, as: 'wavePoolException'
        end
      end
      
      class PortionSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, as: 'quantity'
          collection :unit, as: 'unit', class: Google::Apis::MybusinessV4::MenuLabel, decorator: Google::Apis::MybusinessV4::MenuLabel::Representation
      
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class PriceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :price_list_id, as: 'priceListId'
          collection :sections, as: 'sections', class: Google::Apis::MybusinessV4::Section, decorator: Google::Apis::MybusinessV4::Section::Representation
      
          property :source_url, as: 'sourceUrl'
        end
      end
      
      class Profile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :built_year, as: 'builtYear'
          property :built_year_exception, as: 'builtYearException'
          property :floors_count, as: 'floorsCount'
          property :floors_count_exception, as: 'floorsCountException'
          property :last_renovated_year, as: 'lastRenovatedYear'
          property :last_renovated_year_exception, as: 'lastRenovatedYearException'
          property :rooms_count, as: 'roomsCount'
          property :rooms_count_exception, as: 'roomsCountException'
        end
      end
      
      class Question
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::MybusinessV4::Author, decorator: Google::Apis::MybusinessV4::Author::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :text, as: 'text'
          collection :top_answers, as: 'topAnswers', class: Google::Apis::MybusinessV4::Answer, decorator: Google::Apis::MybusinessV4::Answer::Representation
      
          property :total_answer_count, as: 'totalAnswerCount'
          property :update_time, as: 'updateTime'
          property :upvote_count, as: 'upvoteCount'
        end
      end
      
      class RegionCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :label, as: 'label'
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
        end
      end
      
      class RelationshipData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent_chain, as: 'parentChain'
        end
      end
      
      class RepeatedEnumAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :set_values, as: 'setValues'
          collection :unset_values, as: 'unsetValues'
        end
      end
      
      class ReportGoogleLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_group_name, as: 'locationGroupName'
          property :report_reason_bad_location, as: 'reportReasonBadLocation'
          property :report_reason_bad_recommendation, as: 'reportReasonBadRecommendation'
          property :report_reason_elaboration, as: 'reportReasonElaboration'
          property :report_reason_language_code, as: 'reportReasonLanguageCode'
        end
      end
      
      class ReportLocalPostInsightsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_request, as: 'basicRequest', class: Google::Apis::MybusinessV4::BasicMetricsRequest, decorator: Google::Apis::MybusinessV4::BasicMetricsRequest::Representation
      
          collection :local_post_names, as: 'localPostNames'
        end
      end
      
      class ReportLocalPostInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_post_metrics, as: 'localPostMetrics', class: Google::Apis::MybusinessV4::LocalPostMetrics, decorator: Google::Apis::MybusinessV4::LocalPostMetrics::Representation
      
          property :name, as: 'name'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class ReportLocationInsightsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_request, as: 'basicRequest', class: Google::Apis::MybusinessV4::BasicMetricsRequest, decorator: Google::Apis::MybusinessV4::BasicMetricsRequest::Representation
      
          property :driving_directions_request, as: 'drivingDirectionsRequest', class: Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest, decorator: Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest::Representation
      
          collection :location_names, as: 'locationNames'
        end
      end
      
      class ReportLocationInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_driving_direction_metrics, as: 'locationDrivingDirectionMetrics', class: Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics, decorator: Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics::Representation
      
          collection :location_metrics, as: 'locationMetrics', class: Google::Apis::MybusinessV4::LocationMetrics, decorator: Google::Apis::MybusinessV4::LocationMetrics::Representation
      
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :review_id, as: 'reviewId'
          property :review_reply, as: 'reviewReply', class: Google::Apis::MybusinessV4::ReviewReply, decorator: Google::Apis::MybusinessV4::ReviewReply::Representation
      
          property :reviewer, as: 'reviewer', class: Google::Apis::MybusinessV4::Reviewer, decorator: Google::Apis::MybusinessV4::Reviewer::Representation
      
          property :star_rating, as: 'starRating'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReviewReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Reviewer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :is_anonymous, as: 'isAnonymous'
          property :profile_photo_url, as: 'profilePhotoUrl'
        end
      end
      
      class SearchChainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chains, as: 'chains', class: Google::Apis::MybusinessV4::Chain, decorator: Google::Apis::MybusinessV4::Chain::Representation
      
        end
      end
      
      class SearchGoogleLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :query, as: 'query'
          property :result_count, as: 'resultCount'
        end
      end
      
      class SearchGoogleLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_locations, as: 'googleLocations', class: Google::Apis::MybusinessV4::GoogleLocation, decorator: Google::Apis::MybusinessV4::GoogleLocation::Representation
      
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::MybusinessV4::Item, decorator: Google::Apis::MybusinessV4::Item::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :section_id, as: 'sectionId'
          property :section_type, as: 'sectionType'
        end
      end
      
      class ServiceAreaBusiness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_type, as: 'businessType'
          property :places, as: 'places', class: Google::Apis::MybusinessV4::Places, decorator: Google::Apis::MybusinessV4::Places::Representation
      
          property :radius, as: 'radius', class: Google::Apis::MybusinessV4::PointRadius, decorator: Google::Apis::MybusinessV4::PointRadius::Representation
      
        end
      end
      
      class ServiceBusinessContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
        end
      end
      
      class ServiceItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_form_service_item, as: 'freeFormServiceItem', class: Google::Apis::MybusinessV4::FreeFormServiceItem, decorator: Google::Apis::MybusinessV4::FreeFormServiceItem::Representation
      
          property :is_offered, as: 'isOffered'
          property :price, as: 'price', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
          property :structured_service_item, as: 'structuredServiceItem', class: Google::Apis::MybusinessV4::StructuredServiceItem, decorator: Google::Apis::MybusinessV4::StructuredServiceItem::Representation
      
        end
      end
      
      class ServiceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :service_items, as: 'serviceItems', class: Google::Apis::MybusinessV4::ServiceItem, decorator: Google::Apis::MybusinessV4::ServiceItem::Representation
      
        end
      end
      
      class ServiceType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :service_type_id, as: 'serviceTypeId'
        end
      end
      
      class Services
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baggage_storage, as: 'baggageStorage'
          property :baggage_storage_exception, as: 'baggageStorageException'
          property :concierge, as: 'concierge'
          property :concierge_exception, as: 'conciergeException'
          property :convenience_store, as: 'convenienceStore'
          property :convenience_store_exception, as: 'convenienceStoreException'
          property :currency_exchange, as: 'currencyExchange'
          property :currency_exchange_exception, as: 'currencyExchangeException'
          property :elevator, as: 'elevator'
          property :elevator_exception, as: 'elevatorException'
          property :front_desk, as: 'frontDesk'
          property :front_desk_exception, as: 'frontDeskException'
          property :full_service_laundry, as: 'fullServiceLaundry'
          property :full_service_laundry_exception, as: 'fullServiceLaundryException'
          property :gift_shop, as: 'giftShop'
          property :gift_shop_exception, as: 'giftShopException'
          property :languages_spoken, as: 'languagesSpoken', class: Google::Apis::MybusinessV4::LanguagesSpoken, decorator: Google::Apis::MybusinessV4::LanguagesSpoken::Representation
      
          property :self_service_laundry, as: 'selfServiceLaundry'
          property :self_service_laundry_exception, as: 'selfServiceLaundryException'
          property :social_hour, as: 'socialHour'
          property :social_hour_exception, as: 'socialHourException'
          property :twenty_four_hour_front_desk, as: 'twentyFourHourFrontDesk'
          property :twenty_four_hour_front_desk_exception, as: 'twentyFourHourFrontDeskException'
          property :wake_up_calls, as: 'wakeUpCalls'
          property :wake_up_calls_exception, as: 'wakeUpCallsException'
        end
      end
      
      class SpecialHourPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close_time, as: 'closeTime'
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :is_closed, as: 'isClosed'
          property :open_time, as: 'openTime'
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
        end
      end
      
      class SpecialHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :special_hour_periods, as: 'specialHourPeriods', class: Google::Apis::MybusinessV4::SpecialHourPeriod, decorator: Google::Apis::MybusinessV4::SpecialHourPeriod::Representation
      
        end
      end
      
      class StartUploadMediaItemDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StructuredServiceItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :service_type_id, as: 'serviceTypeId'
        end
      end
      
      class TargetLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_address, as: 'locationAddress'
          property :location_name, as: 'locationName'
        end
      end
      
      class TimeDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::MybusinessV4::TimeRange, decorator: Google::Apis::MybusinessV4::TimeRange::Representation
      
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :end_time, as: 'endTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close_day, as: 'closeDay'
          property :close_time, as: 'closeTime'
          property :open_day, as: 'openDay'
          property :open_time, as: 'openTime'
        end
      end
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TopDirectionSources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_count, as: 'dayCount'
          collection :region_counts, as: 'regionCounts', class: Google::Apis::MybusinessV4::RegionCount, decorator: Google::Apis::MybusinessV4::RegionCount::Representation
      
        end
      end
      
      class TransferLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :to_account, as: 'toAccount'
        end
      end
      
      class Transportation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airport_shuttle, as: 'airportShuttle'
          property :airport_shuttle_exception, as: 'airportShuttleException'
          property :car_rental_on_property, as: 'carRentalOnProperty'
          property :car_rental_on_property_exception, as: 'carRentalOnPropertyException'
          property :free_airport_shuttle, as: 'freeAirportShuttle'
          property :free_airport_shuttle_exception, as: 'freeAirportShuttleException'
          property :free_private_car_service, as: 'freePrivateCarService'
          property :free_private_car_service_exception, as: 'freePrivateCarServiceException'
          property :local_shuttle, as: 'localShuttle'
          property :local_shuttle_exception, as: 'localShuttleException'
          property :private_car_service, as: 'privateCarService'
          property :private_car_service_exception, as: 'privateCarServiceException'
          property :transfer, as: 'transfer'
          property :transfer_exception, as: 'transferException'
        end
      end
      
      class UpsertAnswerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::MybusinessV4::Answer, decorator: Google::Apis::MybusinessV4::Answer::Representation
      
        end
      end
      
      class UrlAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class Verification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class VerificationOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_data, as: 'addressData', class: Google::Apis::MybusinessV4::AddressVerificationData, decorator: Google::Apis::MybusinessV4::AddressVerificationData::Representation
      
          property :email_data, as: 'emailData', class: Google::Apis::MybusinessV4::EmailVerificationData, decorator: Google::Apis::MybusinessV4::EmailVerificationData::Representation
      
          property :phone_data, as: 'phoneData', class: Google::Apis::MybusinessV4::PhoneVerificationData, decorator: Google::Apis::MybusinessV4::PhoneVerificationData::Representation
      
          property :verification_method, as: 'verificationMethod'
        end
      end
      
      class VerifyLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_input, as: 'addressInput', class: Google::Apis::MybusinessV4::AddressInput, decorator: Google::Apis::MybusinessV4::AddressInput::Representation
      
          property :context, as: 'context', class: Google::Apis::MybusinessV4::ServiceBusinessContext, decorator: Google::Apis::MybusinessV4::ServiceBusinessContext::Representation
      
          property :email_input, as: 'emailInput', class: Google::Apis::MybusinessV4::EmailInput, decorator: Google::Apis::MybusinessV4::EmailInput::Representation
      
          property :language_code, as: 'languageCode'
          property :method_prop, as: 'method'
          property :phone_input, as: 'phoneInput', class: Google::Apis::MybusinessV4::PhoneInput, decorator: Google::Apis::MybusinessV4::PhoneInput::Representation
      
        end
      end
      
      class VerifyLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
        end
      end
      
      class ViewsFromUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :beach_view, as: 'beachView'
          property :beach_view_exception, as: 'beachViewException'
          property :city_view, as: 'cityView'
          property :city_view_exception, as: 'cityViewException'
          property :garden_view, as: 'gardenView'
          property :garden_view_exception, as: 'gardenViewException'
          property :lake_view, as: 'lakeView'
          property :lake_view_exception, as: 'lakeViewException'
          property :landmark_view, as: 'landmarkView'
          property :landmark_view_exception, as: 'landmarkViewException'
          property :ocean_view, as: 'oceanView'
          property :ocean_view_exception, as: 'oceanViewException'
          property :pool_view, as: 'poolView'
          property :pool_view_exception, as: 'poolViewException'
          property :valley_view, as: 'valleyView'
          property :valley_view_exception, as: 'valleyViewException'
        end
      end
      
      class Wellness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doctor_on_call, as: 'doctorOnCall'
          property :doctor_on_call_exception, as: 'doctorOnCallException'
          property :elliptical_machine, as: 'ellipticalMachine'
          property :elliptical_machine_exception, as: 'ellipticalMachineException'
          property :fitness_center, as: 'fitnessCenter'
          property :fitness_center_exception, as: 'fitnessCenterException'
          property :free_fitness_center, as: 'freeFitnessCenter'
          property :free_fitness_center_exception, as: 'freeFitnessCenterException'
          property :free_weights, as: 'freeWeights'
          property :free_weights_exception, as: 'freeWeightsException'
          property :massage, as: 'massage'
          property :massage_exception, as: 'massageException'
          property :salon, as: 'salon'
          property :salon_exception, as: 'salonException'
          property :sauna, as: 'sauna'
          property :sauna_exception, as: 'saunaException'
          property :spa, as: 'spa'
          property :spa_exception, as: 'spaException'
          property :treadmill, as: 'treadmill'
          property :treadmill_exception, as: 'treadmillException'
          property :weight_machine, as: 'weightMachine'
          property :weight_machine_exception, as: 'weightMachineException'
        end
      end
    end
  end
end
