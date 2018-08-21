//==============================================================================
//
//  This file was auto-generated by a tool using the PayPal REST API schema.
//  More information: https://developer.paypal.com/docs/api/
//
//==============================================================================
using System.Collections.Generic;
using Newtonsoft.Json;
using PayPal.Util;

namespace PayPal.Api
{
    /// <summary>
    /// A REST API billing agreement resource.
    /// <para>
    /// See <a href="https://developer.paypal.com/docs/api/">PayPal Developer documentation</a> for more information.
    /// </para>
    /// </summary>
    public class Agreement : PayPalRelationalObject
    {
        /// <summary>
        /// Identifier of the agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "id")]
        public string id { get; set; }

        /// <summary>
        /// State of the agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "state")]
        public string state { get; set; }

        /// <summary>
        /// Name of the agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "name")]
        public string name { get; set; }

        /// <summary>
        /// Description of the agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "description")]
        public string description { get; set; }

        /// <summary>
        /// Start date of the agreement. Date format yyyy-MM-dd z, as defined in [ISO8601](http://tools.ietf.org/html/rfc3339#section-5.6).
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "start_date")]
        public string start_date { get; set; }

        /// <summary>
        /// Details of the agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "agreement_details")]
        public AgreementDetails agreement_details { get; set; }

        /// <summary>
        /// Details of the buyer who is enrolling in this agreement. This information is gathered from execution of the approval URL.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "payer")]
        public Payer payer { get; set; }

        /// <summary>
        /// Shipping address object of the agreement, which should be provided if it is different from the default address.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "shipping_address")]
        public Address shipping_address { get; set; }

        /// <summary>
        /// Default merchant preferences from the billing plan are used, unless override preferences are provided here.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "override_merchant_preferences")]
        public MerchantPreferences override_merchant_preferences { get; set; }

        /// <summary>
        /// Array of override_charge_model for this agreement if needed to change the default models from the billing plan.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "override_charge_models")]
        public List<OverrideChargeModel> override_charge_models { get; set; }

        /// <summary>
        /// Plan details for this agreement.
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "plan")]
        public Plan plan { get; set; }

        /// <summary>
        /// Date and time that this resource was created. Date format yyyy-MM-dd z, as defined in [ISO8601](http://tools.ietf.org/html/rfc3339#section-5.6).
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "create_time")]
        public string create_time { get; set; }

        /// <summary>
        /// Date and time that this resource was updated. Date format yyyy-MM-dd z, as defined in [ISO8601](http://tools.ietf.org/html/rfc3339#section-5.6).
        /// </summary>
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore, PropertyName = "update_time")]
        public string update_time { get; set; }

        /// <summary>
        /// Get or sets the token found in the approval_url link returned from a call to create this resource.
        /// </summary>
        [JsonIgnore]
        public string token { get; set; }

        /// <summary>
        /// Create a new billing agreement by passing the details for the agreement, including the name, description, start date, payer, and billing plan in the request JSON.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <returns>Agreement</returns>
        public Agreement Create(APIContext apiContext)
        {
            return Agreement.Create(apiContext, this);
        }

        /// <summary>
        /// Create a new billing agreement by passing the details for the agreement, including the name, description, start date, payer, and billing plan in the request JSON.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreement">The Agreement object to be used when creating the PayPal resource.</param>
        /// <returns>Agreement</returns>
        public static Agreement Create(APIContext apiContext, Agreement agreement)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);

            // Configure and send the request
            var resourcePath = "v1/payments/billing-agreements";
            var resource = PayPalResource.ConfigureAndExecute<Agreement>(apiContext, HttpMethod.POST, resourcePath, agreement.ConvertToJson());
            resource.token = resource.GetTokenFromApprovalUrl();
            return resource;
        }

        /// <summary>
        /// Execute a billing agreement after buyer approval by passing the payment token to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <returns>Agreement</returns>
        public Agreement Execute(APIContext apiContext)
        {
            return Agreement.Execute(apiContext, this.token);
        }

        /// <summary>
        /// Execute a billing agreement after buyer approval by passing the payment token to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="token">Payment token received after buyer approval of the billing agreement.</param>
        /// <returns>Agreement</returns>
        public static Agreement Execute(APIContext apiContext, string token)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/agreement-execute";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { token });
            return PayPalResource.ConfigureAndExecute<Agreement>(apiContext, HttpMethod.POST, resourcePath);
        }

        /// <summary>
        /// Retrieve details for a particular billing agreement by passing the ID of the agreement to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">Identifier of the agreement resource to retrieve.</param>
        /// <returns>Agreement</returns>
        public static Agreement Get(APIContext apiContext, string agreementId)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            return PayPalResource.ConfigureAndExecute<Agreement>(apiContext, HttpMethod.GET, resourcePath);
        }

        /// <summary>
        /// Update details of a billing agreement, such as the description, shipping address, and start date, by passing the ID of the agreement to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="patchRequest">PatchRequest</param>
        public void Update(APIContext apiContext, PatchRequest patchRequest)
        {
            Agreement.Update(apiContext, this.id, patchRequest);
        }

        /// <summary>
        /// Update details of a billing agreement, such as the description, shipping address, and start date, by passing the ID of the agreement to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement that will be updated.</param>
        /// <param name="patchRequest">PatchRequest</param>
        public static void Update(APIContext apiContext, string agreementId, PatchRequest patchRequest)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(patchRequest, "patchRequest");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.PATCH, resourcePath, patchRequest.ConvertToJson());
        }

        /// <summary>
        /// Suspend a particular billing agreement by passing the ID of the agreement to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public void Suspend(APIContext apiContext, AgreementStateDescriptor agreementStateDescriptor)
        {
            Agreement.Suspend(apiContext, this.id, agreementStateDescriptor);
        }

        /// <summary>
        /// Suspend a particular billing agreement by passing the ID of the agreement to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement that will be suspended.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public static void Suspend(APIContext apiContext, string agreementId, AgreementStateDescriptor agreementStateDescriptor)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(agreementStateDescriptor, "agreementStateDescriptor");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/suspend";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.POST, resourcePath, agreementStateDescriptor.ConvertToJson());
        }

        /// <summary>
        /// Reactivate a suspended billing agreement by passing the ID of the agreement to the appropriate URI. In addition, pass an AgreementStateDescriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public void ReActivate(APIContext apiContext, AgreementStateDescriptor agreementStateDescriptor)
        {
            Agreement.ReActivate(apiContext, this.id, agreementStateDescriptor);
        }

        /// <summary>
        /// Reactivate a suspended billing agreement by passing the ID of the agreement to the appropriate URI. In addition, pass an AgreementStateDescriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement that will be reactivated.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public static void ReActivate(APIContext apiContext, string agreementId, AgreementStateDescriptor agreementStateDescriptor)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(agreementStateDescriptor, "agreementStateDescriptor");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/re-activate";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.POST, resourcePath, agreementStateDescriptor.ConvertToJson());
        }

        /// <summary>
        /// Cancel a billing agreement by passing the ID of the agreement to the request URI. In addition, pass an agreement_state_descriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public void Cancel(APIContext apiContext, AgreementStateDescriptor agreementStateDescriptor)
        {
            Agreement.Cancel(apiContext, this.id, agreementStateDescriptor);
        }

        /// <summary>
        /// Cancel a billing agreement by passing the ID of the agreement to the request URI. In addition, pass an AgreementStateDescriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement that will be canceled.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public static void Cancel(APIContext apiContext, string agreementId, AgreementStateDescriptor agreementStateDescriptor)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(agreementStateDescriptor, "agreementStateDescriptor");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/cancel";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.POST, resourcePath, agreementStateDescriptor.ConvertToJson());
        }

        /// <summary>
        /// Bill an outstanding amount for an agreement by passing the ID of the agreement to the request URI. In addition, pass an AgreementStateDescriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public void BillBalance(APIContext apiContext, AgreementStateDescriptor agreementStateDescriptor)
        {
            Agreement.BillBalance(apiContext, this.id, agreementStateDescriptor);
        }

        /// <summary>
        /// Bill an outstanding amount for an agreement by passing the ID of the agreement to the request URI. In addition, pass an AgreementStateDescriptor object in the request JSON that includes a note about the reason for changing the state of the agreement and the amount and currency for the agreement.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement to perform the operation against.</param>
        /// <param name="agreementStateDescriptor">AgreementStateDescriptor</param>
        public static void BillBalance(APIContext apiContext, string agreementId, AgreementStateDescriptor agreementStateDescriptor)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(agreementStateDescriptor, "agreementStateDescriptor");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/bill-balance";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.POST, resourcePath, agreementStateDescriptor.ConvertToJson());
        }

        /// <summary>
        /// Set the balance for an agreement by passing the ID of the agreement to the request URI. In addition, pass a Currency object in the request JSON that specifies the currency type and value of the balance.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="currency">Currency</param>
        public void SetBalance(APIContext apiContext, Currency currency)
        {
            Agreement.SetBalance(apiContext, this.id, currency);
        }

        /// <summary>
        /// Set the balance for an agreement by passing the ID of the agreement to the request URI. In addition, pass a Currency object in the request JSON that specifies the currency type and value of the balance.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">ID of the billing agreement to perform the operation against.</param>
        /// <param name="currency">Currency</param>
        public static void SetBalance(APIContext apiContext, string agreementId, Currency currency)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(currency, "currency");

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/set-balance";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId });
            PayPalResource.ConfigureAndExecute(apiContext, HttpMethod.POST, resourcePath, currency.ConvertToJson());
        }

        /// <summary>
        /// List transactions for a billing agreement by passing the ID of the agreement, as well as the start and end dates of the range of transactions to list, to the request URI.
        /// </summary>
        /// <param name="apiContext">APIContext used for the API call.</param>
        /// <param name="agreementId">Identifier of the agreement resource for which to list transactions.</param>
        /// <param name="startDate">The start date of the range of transactions to list. Date format must be yyyy-MM-dd.</param>
        /// <param name="endDate">The end date of the range of transactions to list. Date format must be yyyy-MM-dd.</param>
        /// <returns>AgreementTransactions</returns>
        public static AgreementTransactions ListTransactions(APIContext apiContext, string agreementId, string startDate, string endDate)
        {
            // Validate the arguments to be used in the request
            ArgumentValidator.ValidateAndSetupAPIContext(apiContext);
            ArgumentValidator.Validate(agreementId, "agreementId");
            ArgumentValidator.Validate(startDate, "startDate");
            ArgumentValidator.Validate(endDate, "endDate");

            var queryParameters = new QueryParameters();
            queryParameters["start_date"] = startDate;
            queryParameters["end_date"] = endDate;

            // Configure and send the request
            var pattern = "v1/payments/billing-agreements/{0}/transactions";
            var resourcePath = SDKUtil.FormatURIPath(pattern, new object[] { agreementId }) + queryParameters.ToUrlFormattedString();
            return PayPalResource.ConfigureAndExecute<AgreementTransactions>(apiContext, HttpMethod.GET, resourcePath);
        }
    }
}
