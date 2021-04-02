# Okra NPM

JS library for implementing Okra widget

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
    app_id: ''// app_id from your app builder
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
    short_url: '', //Your short url from the link builder
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


## Okra.buildWithShortUrl Options

|Name                   | Type           | Required            | Description         |
|-----------------------|----------------|---------------------|---------------------|
|  `short_url`          | `String`       | true                | Your generated url from link builder.
|  `onSuccess`          | `Function`     | false               | Action to perform after widget is successful
|  `onClose`            | `Function`     | false               | Action to perform if widget is closed
|  `onError`            | `Function`     | false               | Action to perform on widget Error
|  `BeforeClose`        | `Function`     | false               | Action to perform before widget close


## Need more options? 
Try our App Builder! [Click here to get started](https://dash.okra.ng/link-builder)

## Other information
For enquires and questions, contact
- [@oreace](https://github.com/oreace)
