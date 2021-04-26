view: salestax {
  sql_table_name: dbo.zLori ;;

  dimension: adjustment_amount {
    type: string
    sql: ${TABLE}.AdjustmentAmount ;;
  }

  dimension: adjustment_description {
    type: string
    sql: ${TABLE}.AdjustmentDescription ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreationDate ;;
  }

  dimension: days_late {
    type: string
    sql: ${TABLE}.DaysLate ;;
  }

  dimension: distribution_amount {
    type: string
    sql: ${TABLE}.DistributionAmount ;;
  }

  dimension: dorinterest_amount {
    type: string
    sql: ${TABLE}.DORInterestAmount ;;
  }

  dimension: filing_frequency_code {
    type: string
    sql: ${TABLE}.FilingFrequencyCode ;;
  }

  dimension_group: filing_period_begin {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FilingPeriodBeginDate ;;
  }

  dimension: filing_period_begin_date_text {
    type: string
    sql: ${TABLE}.FilingPeriodBeginDateText ;;
  }

  dimension_group: filing_period_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FilingPeriodEndDate ;;
  }

  dimension: filing_period_end_date_text {
    type: string
    sql: ${TABLE}.FilingPeriodEndDateText ;;
  }

  dimension: found_money_indicator {
    type: string
    sql: ${TABLE}.FoundMoneyIndicator ;;
  }

  dimension: interest_amount {
    type: string
    sql: ${TABLE}.InterestAmount ;;
  }

  dimension: is_zero_filer {
    type: number
    sql: ${TABLE}.IsZeroFiler ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LastUpdateDate ;;
  }

  dimension: last_updated_by {
    type: string
    sql: ${TABLE}.LastUpdatedBy ;;
  }

  dimension: lori_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LoriId ;;
  }

  dimension: non_filer_indicator {
    type: string
    sql: ${TABLE}.NonFilerIndicator ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.PaymentId ;;
  }

  dimension: payment_source_code {
    type: string
    sql: ${TABLE}.PaymentSourceCode ;;
  }

  dimension: payment_source_description {
    type: string
    sql: ${TABLE}.PaymentSourceDescription ;;
  }

  dimension: penalty_amount {
    type: string
    sql: ${TABLE}.PenaltyAmount ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: remote_tax {
    type: string
    sql: ${TABLE}.RemoteTax ;;
  }

  dimension: tax_amount {
    type: string
    sql: ${TABLE}.TaxAmount ;;
  }

  dimension_group: transaction {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TransactionDate ;;
  }

  dimension: vendor_id {
    type: number
    sql: ${TABLE}.VendorId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
