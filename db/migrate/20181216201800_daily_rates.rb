class DailyRates < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_rates, primary_key: :properties_id, id: :bigint, default: nil, force: :cascade do |t|
      t.daterange :dates_booked, array: true
      t.bigint :dates_days, array: true
      t.bigint :dates_total_rent, array: true
      t.bigint :dates_daily_rent, array: true
    end
  end
end
