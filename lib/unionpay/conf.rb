#encoding:utf-8
module UnionPay
  class << self
    attr_accessor :front_pay_url, :back_pay_url, :query_url
  end
  VERIFY_HTTPS_CERT = false

  Timezone = "Asia/Shanghai" #时区
  Sign_method = "01"

  # 支付请求预定义字段
  PayParams = {
    'version' => '5.0.0',
    'encoding' => 'UTF-8', 
    'txnType' => '01',
    'txnSubType' => '01',
    'bizType'  => '000201',
    'channelType'  => '07',
    'signMethod'  => '01'
  }

  FRONT_PAY = 1
  BACK_PAY = 2
  RESPONSE = 3
  QUERY = 4

  CONSUME = "01"   #消费
  CONSUME_VOID = "31"
  PRE_AUTH = "02" #预授权
  PRE_AUTH_VOID = "32"
  PRE_AUTH_COMPLETE = "03"
  PRE_AUTH_VOID_COMPLETE = "33"
  REFUND = "04"
  REGISTRATION = "71"

  CURRENCY_CNY = "156"

  # 支付请求可为空字段（但必须填写）
  PayParamsEmpty = {
    "origQid" => "",
    "acqCode" => "",
    "merCode" => "",
    "commodityUrl" => "",
    "commodityName" => "",
    "commodityUnitPrice" => "",
    "commodityQuantity" => "",
    "commodityDiscount" => "",
    "transferFee" => "",
    "customerName" => "",
    "defaultPayType" => "",
    "defaultBankNumber" => "",
    "transTimeout" => "",
    "merReserved" => ""
  }

  # 支付请求必填字段检查
  PayParamsCheck = [
    "version",
    "encoding",
    "certId",
    "signMethod",
    "signature",
    "txnType",
    "txnSubType",
    "bizType",
    "channelType",
    "orderId",
    "currencyCode",
    "txnTime",
    "payTimeout",
    "issInsCode"
  ]

  # 查询请求必填字段检查
  QueryParamsCheck = [
    "version",
    "charset",
    "transType",
    "merId",
    "orderNumber",
    "orderTime",
    "merReserved",
  ]

  # 商户保留域可能包含的字段
  MerParamsReserved = [
    "accessType",
    "merId",
    "frontUrl",
    "backUrl",
    "frontFailUrl"
  ]

  NotifyParamCheck = [
    "version",
    "charset",
    "transType",
    "respCode",
    "respMsg",
    "respTime",
    "merId",
    "merAbbr",
    "orderNumber",
    "traceNumber",
    "traceTime",
    "qid",
    "orderAmount",
    "orderCurrency",
    "settleAmount",
    "settleCurrency",
    "settleDate",
    "exchangeRate",
    "exchangeDate",
    "cupReserved",
    "signMethod",
    "signature",
  ]

  SignIgnoreParams = [
    "bank",
  ]
end
