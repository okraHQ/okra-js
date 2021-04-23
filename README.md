# Okra Widget JavaScript SDK
![alt text](https://files.readme.io/41dcda7-react-native-black.svg)

JS library for implementing the OkraJS widget - OkraJS is a safe and secure web drop-in module and this library provides a front-end web (also available in [iOS](https://github.com/okraHQ/okra-ios-sdk) and [Android](https://github.com/okraHQ/okra-android-sdk)) SDK for [account authentication](https://docs.okra.ng/docs/widget-properties) and [payment initiation](https://docs.okra.ng/docs/creating-a-charge) for each bank that Okra [supports](https://docs.okra.ng/docs/bank-coverage). 

## Try the demo
Checkout the [widget flow](https://okra.ng/) to view how the Okra Widget works. *Click "See How it Works"*

## Before getting started
- Checkout our [get started guide](https://docs.okra.ng/docs/get-started-with-okra) to create your developer account and retrieve your Client Token, API Keys, and Private Keys.
- Create a [sandbox customer](https://docs.okra.ng/docs/creating-sandbox-customers), so you can get connecting immediately. 

## buildWithShortURL
- If you are using the `buildWithShortURL` version, you will first need to [create a link](https://docs.okra.ng/docs/widget-customization) on your dashboard, and use the `short url` returend at the end of the creation flow.

*Bonus Points*
- Setup [Slack Notifications](https://docs.okra.ng/docs/slack-integration) so you can see your API call statuses and re-run calls in real-time!

## Installing

Using npm:

```bash
$ npm install okra-js
```

Using yarn:

```bash
$ yarn add okra-js
```

Using CDN:

```html
<script src="https://cdn.okra.ng/v2/bundle.js"></script>
```

## Usuage
For JS frameworks import it and use
```js
import Okra from 'okra-js'
```
For others, just use
```js

Okra.buildWithOptions({
    name: 'Peter the Builder',
    env: 'production-sandbox',
    app_id: ''// app_id from your App builder
    key: '', // Your key from the Okra dashboard
    token: '', // Your token from the okra dashboard
    products: ['auth','identity','balance','transactions', 'income'], //in lowercase
    onSuccess: function(data){
        console.log('options success', data)
    },
    onClose: function(){
        console.log('options close')
    }
})

// OR

Okra.buildWithShortUrl({
    short_url: '', //Your short url from the App builder (https://dash.okra.ng/links)
    onSuccess: function(data){
        console.log('options success', data)
    },
    onClose: function(){
        console.log('options close')
    }
})
```


## Okra.buildWithOptions Options

|Name                   | Type           | Required            | Default Value       | Description         |
|-----------------------|----------------|---------------------|---------------------|---------------------|
|  `app_id `            | `String`       | true                |                     | Your app id from your Okra Dashboard.
|  `key `               | `String`       | true                |                     | Your public key from your Okra Dashboard.
|  `token `             | `String`       | true                |                     | Your token from your Okra Dashboard.
|  `env `               | `String`       | false               |`production`         | production(live)/production-sandbox (test)
|  `products`           | `Array`        | true                | `['Auth']`          | The Okra products you want to use with the widget.
|  `payment`            | `Booelan`      | false               |                     | Whether you want to initiate a payment (https://docs.okra.ng/docs/payments)
|  `charge `            | `Object`       | false               |                     | Payment charge opject (https://docs.okra.ng/docs/creating-a-charge)
|  `products`           | `Array`        | true                | `['Auth']`          | The Okra products you want to use with the widget.
|  `logo `              | `String(URL)`  | false               | Okra's Logo         | 
|  `name `              | `String`       | false               | Your Company's name | Name on the widget 
|  `color`              | `HEX   `       | false               | #3AB795             | Theme on the widget 
|  `limit`              | `Number`       | false               | 24                  | Statement length
|  `filter`             | `Object`       | false               |                     | Filter for widget
|  `isCorporate`        | `Boolen`       | false               | `false`             | Corporate or Individual account
|  `connectMessage`     | `String`       | false               |                     | Instruction to connnect account
|  `widget_success`     | `String`       | false               |                     | Widget Success Message
|  `widget_failed`      | `String`       | false               |                     | Widget Failed Message
|  `callback_url`       | `String(Url)`  | false               |                     | 
|  `currency`           | `String`       | false               | NGN                 | Wallet to bill
|  `exp`                | `Date`         | false               | Won't expire        | Expirary date of widget
|  `options`            | `Object`       | false               |                     | You can pass a object custom values eg id
|  `onSuccess`          | `Function`     | false               |                     | Action to perform after widget is successful
|  `onClose`            | `Function`     | false               |                     | Action to perform if widget is closed
|  `onError`            | `Function`     | false               |                     | Action to perform on widget Error
|  `BeforeClose`        | `Function`     | false               |                     | Action to perform before widget close

View a complete list of customizable options [here](https://docs.okra.ng/docs/widget-properties)

## Okra.buildWithShortUrl Options

|Name                   | Type           | Required            | Description         |
|-----------------------|----------------|---------------------|---------------------|
|  `short_url`          | `String`       | true                | Your generated url from our [App builder](https://docs.okra.ng/docs/widget-customization).
|  `onSuccess`          | `Function`     | false               | Action to perform after widget is successful
|  `onClose`            | `Function`     | false               | Action to perform if widget is closed
|  `onError`            | `Function`     | false               | Action to perform on widget Error
|  `BeforeClose`        | `Function`     | false               | Action to perform before widget close

## Done connecting?
Checkout our [API Overiview](https://docs.okra.ng/docs/api-overview) and see how to use the data you've received and [other products](https://docs.okra.ng/docs/selfie-verification) you can use to create more personalized experiences for your customers!

## Not a developer? 
Get started without writing a single line of code, Try our App Builder! [Click here to get started](https://dash.okra.ng/link-builder)

## Other information
For enquires and questions, contact
- [@oreace](https://github.com/oreace)
