// All error codes from the Supabase Auth API. The whole list can be found here:
// https://github.com/supabase/auth/blob/master/internal/api/errorcodes.go
import 'package:collection/collection.dart';

enum ErrorCode {
  unexpectedFailure('unexpected_failure'),
  validationFailed('validation_failed'),
  badJson('bad_json'),
  emailExists('email_exists'),
  phoneExists('phone_exists'),
  badJwt('bad_jwt'),
  notAdmin('not_admin'),
  noAuthorization('no_authorization'),
  userNotFound('user_not_found'),
  sessionNotFound('session_not_found'),
  flowStateNotFound('flow_state_not_found'),
  flowStateExpired('flow_state_expired'),
  signupDisabled('signup_disabled'),
  userBanned('user_banned'),
  providerEmailNeedsVerification('provider_email_needs_verification'),
  inviteNotFound('invite_not_found'),
  badOauthState('bad_oauth_state'),
  badOauthCallback('bad_oauth_callback'),
  oauthProviderNotSupported('oauth_provider_not_supported'),
  unexpectedAudience('unexpected_audience'),
  singleIdentityNotDeletable('single_identity_not_deletable'),
  emailConflictIdentityNotDeletable('email_conflict_identity_not_deletable'),
  identityAlreadyExists('identity_already_exists'),
  emailProviderDisabled('email_provider_disabled'),
  phoneProviderDisabled('phone_provider_disabled'),
  tooManyEnrolledMfaFactors('too_many_enrolled_mfa_factors'),
  mfaFactorNameConflict('mfa_factor_name_conflict'),
  mfaFactorNotFound('mfa_factor_not_found'),
  mfaIpAddressMismatch('mfa_ip_address_mismatch'),
  mfaChallengeExpired('mfa_challenge_expired'),
  mfaVerificationFailed('mfa_verification_failed'),
  mfaVerificationRejected('mfa_verification_rejected'),
  insufficientAal('insufficient_aal'),
  captchaFailed('captcha_failed'),
  samlProviderDisabled('saml_provider_disabled'),
  manualLinkingDisabled('manual_linking_disabled'),
  smsSendFailed('sms_send_failed'),
  emailNotConfirmed('email_not_confirmed'),
  phoneNotConfirmed('phone_not_confirmed'),
  reauthNonceMissing('reauth_nonce_missing'),
  samlRelayStateNotFound('saml_relay_state_not_found'),
  samlRelayStateExpired('saml_relay_state_expired'),
  samlIdpNotFound('saml_idp_not_found'),
  samlAssertionNoUserId('saml_assertion_no_user_id'),
  samlAssertionNoEmail('saml_assertion_no_email'),
  userAlreadyExists('user_already_exists'),
  ssoProviderNotFound('sso_provider_not_found'),
  samlMetadataFetchFailed('saml_metadata_fetch_failed'),
  samlIdpAlreadyExists('saml_idp_already_exists'),
  ssoDomainAlreadyExists('sso_domain_already_exists'),
  samlEntityIdMismatch('saml_entity_id_mismatch'),
  conflict('conflict'),
  providerDisabled('provider_disabled'),
  userSsoManaged('user_sso_managed'),
  reauthenticationNeeded('reauthentication_needed'),
  samePassword('same_password'),
  reauthenticationNotValid('reauthentication_not_valid'),
  otpExpired('otp_expired'),
  otpDisabled('otp_disabled'),
  identityNotFound('identity_not_found'),
  weakPassword('weak_password'),
  overRequestRateLimit('over_request_rate_limit'),
  overEmailSendRateLimit('over_email_send_rate_limit'),
  overSmsSendRateLimit('over_sms_send_rate_limit'),
  badCodeVerifier('bad_code_verifier'),
  anonymousProviderDisabled('anonymous_provider_disabled'),
  hookTimeout('hook_timeout'),
  hookTimeoutAfterRetry('hook_timeout_after_retry'),
  hookPayloadOverSizeLimit('hook_payload_over_size_limit'),
  hookPayloadUnknownSize('hook_payload_unknown_size'),
  requestTimeout('request_timeout'),
  mfaPhoneEnrollDisabled('mfa_phone_enroll_not_enabled'),
  mfaPhoneVerifyDisabled('mfa_phone_verify_not_enabled'),
  mfaTotpEnrollDisabled('mfa_totp_enroll_not_enabled'),
  mfaTotpVerifyDisabled('mfa_totp_verify_not_enabled');

  final String code;
  const ErrorCode(this.code);

  static ErrorCode? fromCode(String code) {
    return ErrorCode.values.firstWhereOrNull(
      (value) => value.code == code,
    );
  }
}
