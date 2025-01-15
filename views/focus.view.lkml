view: focus {
  sql_table_name: `jacqui-lags-pbl.billing_export.focus_metrics` ;;




  dimension: availability_zone {
    type: string
    description: "An availability zone is a provider-assigned identifier for a physically separated and isolated area within a
    Region that provides high availability and fault tolerance."
    sql: ${TABLE}.AvailabilityZone ;;
  }

  dimension: billed_cost {
    type: number
    description: "Billed cost represents a charge serving as the basis for invoicing, inclusive of the impacts of all reduced
    rates and discounts while excluding the amortization of relevant purchases (one-time or recurring) paid to
    cover future eligible charges. "
    sql: ${TABLE}.BilledCost ;;
    value_format_name: usd_0
  }

  dimension: billing_account_id {
    type: string
    description: "A Billing Account ID is a provider-assigned identifier for a billing account."
    sql: ${TABLE}.BillingAccountId ;;
  }

  dimension: billing_currency {
    type: string
    description: "Billing currency is an identifier that represents the currency that a charge forresources or services was
    billed in."
    sql: ${TABLE}.BillingCurrency ;;
  }

  dimension_group: billing_period_start {
    type: time
    description: "Billing Period Start represents the inclusive start date and time of a billing period."
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.BillingPeriodStart;;
  }

  dimension_group: billing_period_end {
    type: time
    description: "Billing Period End represents the inclusive end date and time of a billing period."
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.BillingPeriodEnd;;
  }

  dimension: charge_category {
    type: string
    description: "Charge category represents the highest-level classification of a charge based on the nature of how it is
    billed. Charge Category is commonly used to identify and distinguish between types of charges that may
    require different handling."
    sql: ${TABLE}.ChargeCategory;;
  }

  dimension: charge_class {
    type: string
    description: "Charge Class indicates whether the row represents a correction to one or more charges invoiced in a
    previous billing period. Charge Class is commonly used to differentiate corrections from regularly incurred
    charges."
    sql: ${TABLE}.ChargeClass ;;
  }

  dimension: charge_description {
    type: string
    description: "A Charge Description provides a high-level context of a row without requiring additional discovery."
    sql: ${TABLE}.ChargeDescription ;;
  }

  dimension_group: charge_period_start {
    type: time
    description: "Charge Period Start represents the inclusive start date and time within a charge period."
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ChargePeriodStart ;;
  }

  dimension_group: charge_period_end {
    type: time
    description: "Charge Period End represents the exclusive end date and time of a charge period."
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ChargePeriodEnd ;;
  }

  dimension: commitment_discount_category {
    type: string
    description: "Commitment Discount Category indicates whether the commitment-based discount identified in the
    CommitmentDiscountId column is based on usage quantity or cost (aka spend)."
    group_label: "CUDs"
    sql: ${TABLE}.CommitmentDiscountCategory ;;
  }

  dimension: commitment_discount_id {
    type: string
    description: "A Commitment Discount ID is the identifier assigned to a commitment-based discount by the provider."
    group_label: "CUDs"
    sql: ${TABLE}.CommitmentDiscountId ;;
  }

  dimension: commitment_discount_name {
    type: string
    description: "A Commitment Discount Name is the display name assigned to a commitment-based discount."
    group_label: "CUDs"
    sql: ${TABLE}.CommitmentDiscountName ;;
  }

  dimension: consumed_quantity {
    type: number
    description: "The Consumed Quantity represents the volume of a given SKU associated with a resource or service used,
    based on the Consumed Unit"
    sql: ${TABLE}.ConsumedQuantity ;;
  }

  dimension: consumed_unit {
    type: string
    description: "The Consumed Unit represents a provider-specified measurement unit indicating how a provider measures
    usage of a given SKU associated with a resource or service. "
    sql:${TABLE}.ConsumedUnit ;;
  }

  dimension: contracted_cost {
    type: number
    description: "Contracted Cost represents the cost calculated by multiplying contracted unit price and the corresponding
    Pricing Quantity"
    sql: ${TABLE}.ContractedCost ;;
    value_format_name: usd_0
  }

  dimension: contracted_unit_price {
    type: number
    description: "The Contracted Unit Price represents the agreed-upon unit price for a singlePricing Unit of the associated
    SKU, inclusive of negotiated discounts, if present, while excluding negotiated commitment-based discounts
    or any other discounts"
    sql: ${TABLE}.ContractedUnitPrice ;;
    value_format_name: usd_0
  }

  dimension: effective_cost {
    type: number
    description: "Effective Cost represents the amortized cost of the charge after applying all reduced rates, discounts, and
    the applicable portion of relevant, prepaid purchases (one-time or recurring) that covered this charge."
    sql: ${TABLE}.EffectiveCost ;;
    value_format_name: usd_0
  }

  dimension: list_cost {
    type: number
    description: "List Cost represents the cost calculated by multiplying the list unit price and the corresponding Pricing Quantity."
    hidden: yes
    sql: ${TABLE}.ListCost ;;
    value_format_name: usd_0
  }

  dimension: list_unit_price {
    type: string
    description: "The List Unit Price represents the suggested provider-published unit price for a single Pricing Unit of the
    associated SKU, exclusive of any discounts."
    sql: ${TABLE}.ListUnitPrice ;;
    value_format_name: usd_0
  }
  dimension: pricing_category {
    type: string
    description: "The Pricing Category describes the pricing model used for a charge at the time of use or purchase."
    sql: ${TABLE}.PricingCategory ;;
  }

  dimension: pricing_quantity {
    type: number
    description: "The Pricing Quantity represents the volume of a given SKU associated with a resource or service used or
    purchased, based on the Pricing Unit."
    sql: ${TABLE}.PricingQuantity ;;
  }

  dimension: pricing_unit {
    type: string
    description: "The Pricing Unit represents a provider-specified measurement unit for determining unit prices, indicating
    how the provider rates measured usage and purchase quantities after applying pricing rules like block
    pricing. "
    sql: ${TABLE}.PricingUnit ;;
  }

  dimension: provider_name {
    type: string
    description: "A Provider is an entity that makes the resources or services available for purchase."
    sql: ${TABLE}.ProviderName ;;
  }

  dimension: publisher_name {
    type: string
    description: "A Publisher is an entity that produces the resources or services that were purchased."
    sql: ${TABLE}.PublisherName ;;
  }

  dimension: region_id {
    type: string
    description: "A Region ID is a provider-assigned identifier for an isolated geographic area where aresource is provisioned
    or a service is provided."
    sql: ${TABLE}.RegionId ;;
  }

  dimension: region_name {
    type: string
    description: "Region Name is a provider-assigned display name for an isolated geographic area where aresource is
    provisioned or a service is provided."
    sql: ${TABLE}.RegionName ;;
  }

  dimension: resource_id {
    type: string
    description: "A Resource ID is an identifier assigned to a resource by the provider."
    sql: ${TABLE}.ResourceId ;;
  }

  dimension: resource_name {
    type: string
    description: "The Resource Name is a display name assigned to aresource."
    sql: ${TABLE}.ResourceName ;;
  }

  dimension: resource_type {
    type: string
    description: "The Resource Type describes the kind of resource the charge applies to."
    sql: ${TABLE}.ResourceType ;;
  }

  dimension: service_category {
    type: string
    description: "The Service Category is the highest-level classification of a service based on the core function of the service."
    hidden: yes
    sql: ${TABLE}.ServiceCategory ;;
  }

  dimension: service_name {
    type: string
    description: "A service represents an offering that can be purchased from a provider (e.g., cloud virtual machine, SaaS database, professional services from a systems integrator)."
    sql: ${TABLE}.ServiceName ;;
  }

  dimension: sku_id {
    type: string
    description: "A SKU ID is a unique identifier that defines a provider-supported construct for organizing properties that are
    common across one or more SKU Prices."
    sql: ${TABLE}.SkuId ;;
  }

  dimension: sku_price_id {
    type: string
    description: "A SKU Price ID is a unique identifier that defines the unit price used to calculate the charge."
    sql: ${TABLE}.SkuPriceId ;;
  }

  dimension: sub_account_id {
    type: string
    description: "A Sub Account ID is a provider-assigned identifier assigned to a sub account."
    sql: ${TABLE}.SubAccountId ;;
  }

  dimension: tags {
    type: string
    description: "The Tags column represents the set of tags assigned
    to tag sources that also account for potential providerdefined or user-defined tag evaluations."
    hidden: yes
    sql: ${TABLE}.Tags ;;
  }

  # dimension: usage_amount {
  #   type: string
  #   hidden: yes
  #   sql: ${TABLE}.UsageAmount ;;
  # }

  # dimension: gc_cost {
  #   type: number
  #   group_label: "Google Cloud Fields"
  #   label: "Google Cloud Cost"
  #   hidden: yes
  #   sql: ${TABLE}.gc_Cost ;;
  # }

  # dimension: gc_credits {
  #   type: string
  #   hidden: yes
  #   sql: ${TABLE}.gc_Credits ;;
  # }

  # dimension: gc_cost_type {
  #   type: string
  #   group_label: "Google Cloud Fields"
  #   label: "Google Cloud Cost Type"
  #   sql: ${TABLE}.gc_CostType ;;
  # }

  ###### MEASURES ######
  measure: total_list_cost {
    type: sum
    description: "Total List Cost represents the cost calculated by summing the multiplied list unit price and the corresponding Pricing
    Quantity."
    value_format_name: usd_0
    sql: ${list_cost} ;;
  }

  # measure: total_gc_cost {
  #   type: sum
  #   group_label: "Google Cloud Fields"
  #   label: "Total Google Cloud Cost"
  #   value_format_name: usd_0
  #   sql: ${gc_cost} ;;
  # }

  # measure: total_usage_amount {
  #   type: sum
  #   description: "The Consumed Quantity represents the volume of a given SKU associated with a resource or service used,
  #   based on the Consumed Unit."
  #   value_format_name: decimal_0
  #   sql: ${usage_amount} ;;
  # }
}

view: gc_Credits {
  view_label: "Focus"

  dimension: amount {
    type: number
    hidden: yes
    sql: ${TABLE}.amount ;;
  }

  dimension: full_name {
    type: string
    group_label: "Google Cloud Credits"
    sql: ${TABLE}.fullname ;;
  }

  dimension: id {
    type: string
    group_label: "Google Cloud Credits"
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    group_label: "Google Cloud Credits"
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    group_label: "Google Cloud Credits"
    sql: ${TABLE}.type ;;
  }

  measure: total_amount {
    type: sum
    label: "Google Cloud Credit Amount"
    group_label: "Google Cloud Fields"
    value_format_name: usd_0
    sql: ${amount} ;;
  }
}

view: ServiceCategory {
  view_label: "Focus"

  dimension: service_category {
    type: string
    description: "The Service Category is the highest-level classification of a service based on the core function of the service."
    sql: ${TABLE} ;;
  }
}

view: tags {
  view_label: "Focus"

  dimension: inherited {
    type: yesno
    group_label: "Tags"
    sql: ${TABLE}.x_inherited ;;
  }

  dimension: key {
    type: string
    group_label: "Tags"
    sql:  ${TABLE}.key ;;
  }

  dimension: namespace {
    type: string
    group_label: "Tags"
    sql:  ${TABLE}.x_namespace ;;
  }

  dimension: type {
    type: string
    group_label: "Tags"
    sql:  ${TABLE}.x_type ;;
  }

  dimension: value {
    type: string
    group_label: "Tags"
    sql:  ${TABLE}.value ;;
  }
}
