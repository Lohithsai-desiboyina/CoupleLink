const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();
exports.sendSOS = functions.https.onCall(async (data, context) => {
  const { pairId, lat, lng } = data;
  // demo: in production, look up partner tokens and send FCM
  return { success: true };
});
