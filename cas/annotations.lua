---@meta

---@class cas.config
---@field id string
---@field disable_banner? boolean
---@field disable_interstitial? boolean
---@field disable_rewarded? boolean
---@field test_device? string
---@field test? boolean
---@field debug? boolean
---@field listener? function

---@class cas.message
---@field phase number
---@field type number
---@field error? string
---@field protection_applied? boolean
---@field user_country_iso2O? string
---@field placement? string
---@field ad_network? string
---@field ad_unit_id? string
---@field revenue? number

---@alias cas.ad_type 0|1|2

---@class cas
cas = {}

cas.BANNER = 0
cas.INTERSTITIAL = 1
cas.REWARDED = 2

cas.INIT = 3
cas.LOADED = 4
cas.FAILED_TO_LOAD = 5
cas.SHOWN = 6
cas.FAILED = 7
cas.CLICKED = 8
cas.COMPLETE = 9
cas.CLOSED = 10
cas.AD_REVENUE_PAID = 11
cas.TAGGED_AUDIENCE = 12
cas.AUDIENCE_CHILDREN = 13
cas.AUDIENCE_NOT_CHILDREN = 14
cas.AUDIENCE_UNDEFINED = 15
cas.USER_CONSENT = 16
cas.CONSENT_ACCEPTED = 17
cas.CONSENT_DENIED = 18
cas.CCPA = 19
cas.CCPA_OPT_IN_SALE = 20
cas.CCPA_OPT_OUT_SALE = 21
cas.MUTED_AD_SOUNDS = 22
cas.TARGETING_AGE = 23
cas.TARGETING_GENDER = 24
cas.TARGETING_KEYWORDS = 25
cas.GENDER_UNKNOWN = 26
cas.GENDER_MALE = 27
cas.GENDER_FEMALE = 28

---@param cfg cas.config
function cas.init(cfg) end

function cas.validate_integration() end

---@param type cas.ad_type
function cas.load(type) end

---@param type cas.ad_type
function cas.is_loaded(type) end

---@param type cas.ad_type
---@param placement string
function cas.show(type, placement) end

function cas.hide_banner() end

---@param param number
---@param value any
function cas.set(param, value) end

return cas
