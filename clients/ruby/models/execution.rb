class Execution
  attr_accessor :exec_i_d, :order_i_d, :cl_ord_i_d, :account, :symbol, :side, :last_qty, :last_px, :last_mkt, :last_liquidity_ind, :order_qty, :price, :min_qty, :stop_px, :currency, :settl_currency, :exec_type, :ord_type, :time_in_force, :ex_destination, :ord_status, :working_indicator, :ord_rej_reason, :leaves_qty, :cum_qty, :avg_px, :commission, :comm_type, :multi_leg_reporting_type, :text, :trd_match_i_d, :exec_cost, :exec_comm, :transact_time, :timestamp

  # :internal => :external
  def self.attribute_map
    {
      :exec_i_d => :execID,
      :order_i_d => :orderID,
      :cl_ord_i_d => :clOrdID,
      :account => :account,
      :symbol => :symbol,
      :side => :side,
      :last_qty => :lastQty,
      :last_px => :lastPx,
      :last_mkt => :lastMkt,
      :last_liquidity_ind => :lastLiquidityInd,
      :order_qty => :orderQty,
      :price => :price,
      :min_qty => :minQty,
      :stop_px => :stopPx,
      :currency => :currency,
      :settl_currency => :settlCurrency,
      :exec_type => :execType,
      :ord_type => :ordType,
      :time_in_force => :timeInForce,
      :ex_destination => :exDestination,
      :ord_status => :ordStatus,
      :working_indicator => :workingIndicator,
      :ord_rej_reason => :ordRejReason,
      :leaves_qty => :leavesQty,
      :cum_qty => :cumQty,
      :avg_px => :avgPx,
      :commission => :commission,
      :comm_type => :commType,
      :multi_leg_reporting_type => :multiLegReportingType,
      :text => :text,
      :trd_match_i_d => :trdMatchID,
      :exec_cost => :execCost,
      :exec_comm => :execComm,
      :transact_time => :transactTime,
      :timestamp => :timestamp

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"exec_i_d"]
      @exec_i_d = attributes["execID"]
    end
    if self.class.attribute_map[:"order_i_d"]
      @order_i_d = attributes["orderID"]
    end
    if self.class.attribute_map[:"cl_ord_i_d"]
      @cl_ord_i_d = attributes["clOrdID"]
    end
    if self.class.attribute_map[:"account"]
      @account = attributes["account"]
    end
    if self.class.attribute_map[:"symbol"]
      @symbol = attributes["symbol"]
    end
    if self.class.attribute_map[:"side"]
      @side = attributes["side"]
    end
    if self.class.attribute_map[:"last_qty"]
      @last_qty = attributes["lastQty"]
    end
    if self.class.attribute_map[:"last_px"]
      @last_px = attributes["lastPx"]
    end
    if self.class.attribute_map[:"last_mkt"]
      @last_mkt = attributes["lastMkt"]
    end
    if self.class.attribute_map[:"last_liquidity_ind"]
      @last_liquidity_ind = attributes["lastLiquidityInd"]
    end
    if self.class.attribute_map[:"order_qty"]
      @order_qty = attributes["orderQty"]
    end
    if self.class.attribute_map[:"price"]
      @price = attributes["price"]
    end
    if self.class.attribute_map[:"min_qty"]
      @min_qty = attributes["minQty"]
    end
    if self.class.attribute_map[:"stop_px"]
      @stop_px = attributes["stopPx"]
    end
    if self.class.attribute_map[:"currency"]
      @currency = attributes["currency"]
    end
    if self.class.attribute_map[:"settl_currency"]
      @settl_currency = attributes["settlCurrency"]
    end
    if self.class.attribute_map[:"exec_type"]
      @exec_type = attributes["execType"]
    end
    if self.class.attribute_map[:"ord_type"]
      @ord_type = attributes["ordType"]
    end
    if self.class.attribute_map[:"time_in_force"]
      @time_in_force = attributes["timeInForce"]
    end
    if self.class.attribute_map[:"ex_destination"]
      @ex_destination = attributes["exDestination"]
    end
    if self.class.attribute_map[:"ord_status"]
      @ord_status = attributes["ordStatus"]
    end
    if self.class.attribute_map[:"working_indicator"]
      @working_indicator = attributes["workingIndicator"]
    end
    if self.class.attribute_map[:"ord_rej_reason"]
      @ord_rej_reason = attributes["ordRejReason"]
    end
    if self.class.attribute_map[:"leaves_qty"]
      @leaves_qty = attributes["leavesQty"]
    end
    if self.class.attribute_map[:"cum_qty"]
      @cum_qty = attributes["cumQty"]
    end
    if self.class.attribute_map[:"avg_px"]
      @avg_px = attributes["avgPx"]
    end
    if self.class.attribute_map[:"commission"]
      @commission = attributes["commission"]
    end
    if self.class.attribute_map[:"comm_type"]
      @comm_type = attributes["commType"]
    end
    if self.class.attribute_map[:"multi_leg_reporting_type"]
      @multi_leg_reporting_type = attributes["multiLegReportingType"]
    end
    if self.class.attribute_map[:"text"]
      @text = attributes["text"]
    end
    if self.class.attribute_map[:"trd_match_i_d"]
      @trd_match_i_d = attributes["trdMatchID"]
    end
    if self.class.attribute_map[:"exec_cost"]
      @exec_cost = attributes["execCost"]
    end
    if self.class.attribute_map[:"exec_comm"]
      @exec_comm = attributes["execComm"]
    end
    if self.class.attribute_map[:"transact_time"]
      @transact_time = attributes["transactTime"]
    end
    if self.class.attribute_map[:"timestamp"]
      @timestamp = attributes["timestamp"]
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end
