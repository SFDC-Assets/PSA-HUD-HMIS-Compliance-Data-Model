public without sharing class HashString {

    @InvocableMethod (label='Hash String' iconName='slds:custom:custom76')
    
    public static List<String> calcHash(List<String> stringList) {
        List<String> hashList = new List<String>();
        for (String item : stringList) {
            Blob data = Blob.valueOf(item);
            Blob hash = Crypto.generateDigest('SHA256', data);
            String encryptedString = EncodingUtil.convertToHex(hash);
            hashList.add(encryptedString);
        }
        return hashList;
    }
}