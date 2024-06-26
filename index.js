const got = require("got");

const tokens = require("./helper/token");
//use session variables instead

const sosad_cookie = process.env.SESSION;
const botToken = process.env.TG_SECRET;
const chatID = process.env.TG_CHAT_ID;

//get variables from github token (original code)

//const botToken = tokens.botToken;
//const chatID = tokens.chatID;
//const sosad_cookie = tokens.sosad_cookie;

const sosad = got.extend({
  prefixUrl: "https://sosad.fun/",
  // responseType: 'json',
  headers: {
    Cookie: sosad_cookie,
    "user-agent":
      "Mozilla/5.0 (X11; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0",
  },
});

function teleMsg(msg) {
  const telegram =
    "https://api.telegram.org/bot" +
    botToken +
    "/sendMessage?chat_id=" +
    chatID +
    "parse_mode=HTML&text=";

  (async () => {
    try {
      await got(telegram + msg);
    } catch (error) {
      console.log(error.response.body);
    }
  })();
}

(async () => {
  try {
    console.log("Starting...");
    const response = await sosad("qiandao");

    let now = new Date().toLocaleString("zh-CN", {
      timeZone: "Asia/Taipei",
      timeZoneName: "long",
    });

    let message = `
✅ 签到于 ${now}
The status code: ${response.statusCode}.
The requested URL: ${response.requestUrl}.
The redirected URL: ${response.redirectUrls}.
`;

    console.log(message);
    teleMsg(encodeURI(message));
  } catch (error) {
    console.log("Here is the error:");
    console.log(error);
  }
})();
