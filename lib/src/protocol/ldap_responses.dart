part of ldap_protocol;

/**
 * Defines various LDAP response types
 */


/**
 *     BindResponse ::= [APPLICATION 1] SEQUENCE {
             COMPONENTS OF LDAPResult,
             serverSaslCreds    [7] OCTET STRING OPTIONAL }

 */

class BindResponse extends ResponseOp {
  BindResponse(ASN1Sequence o) : super(o) ;
}

/**
 * Search result done
 *
 *    SearchResultDone ::= [APPLICATION 5] LDAPResult
 */

class SearchResultDone extends ResponseOp {
  SearchResultDone(ASN1Sequence s): super(s);
}

/**
 * ModifyResponse ::= [APPLICATION 7] LDAPResult
*/
class ModifyResponse extends ResponseOp {
  ModifyResponse(ASN1Sequence s): super(s);
}

/**
 * A generic LDAP result.
 * This includes...
 *      AddResponse ::= [APPLICATION 9] LDAPResult
 *      DelResponse ::= [APPLICATION 11] LDAPResult
 *      ModifyDNResponse ::= [APPLICATION 13] LDAPResult
 *      CompareResponse ::= [APPLICATION 15] LDAPResult
 *
 */
class GenericResponse extends ResponseOp {
  GenericResponse(ASN1Sequence s): super(s);
}


/***
      ExtendedResponse ::= [APPLICATION 24] SEQUENCE {
      COMPONENTS OF LDAPResult,
      responseName     [10] LDAPOID OPTIONAL,
      response         [11] OCTET STRING OPTIONAL }
*/

class ExtendedResponse extends ResponseOp {
  static const int TYPE_EXTENDED_RESPONSE_OID = 0x8A;

  /**
   * The BER type for the extended response value element.
   */
  static const int TYPE_EXTENDED_RESPONSE_VALUE = 0x8B;

  ExtendedResponse(ASN1Sequence s):super.extended(s) {
    // complete rest or parsing
  }
}

