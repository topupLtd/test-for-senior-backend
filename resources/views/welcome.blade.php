<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Test</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 600;
            height: 100vh;
            margin: 0;
            padding: 10px;
        }
        table{
            margin-left: 45px;
        }

        td{
            border: 1px solid #eee;
            padding: 3px;
            text-align: center;
        }
        code{
            color: #007b00;
        }
        a{
            color: red;
        }
    </style>
</head>
<body>
    <div class="content">
        <h1 class="m-b-md" style="font-size: 40px">Let's have some coffee...</h1>
        <small><code class="red">Output will be in respective routes, with blood color. (you probably needn't internet connection.)</code></small><br/>
        <br/>1. Some people bought some items from Daraz, which was recorded in some table of your database. Defined as: <code>`buyers`</code>, <code>`diary_taken`</code>, <code>`eraser_taken`</code> and <code>`pen_taken`</code>.  Please find the information where -
        <br/>&emsp;1A. <a target="_blank" href="{{url('second-buyer-eloquent')}}">second-buyer-eloquent</a> && <a target="_blank" href="{{url('second-buyer-no-eloquent')}}" >second-buyer-no-eloquent</a>
        <br/>&emsp;The Buyer, who has taken the second highest total items.
        <table><tr><td>Buyer id</td><td>Buyer Name</td><td>Total Diary Taken</td><td>Total Pen Taken</td><td>Total Eraser Taken</td><td>Total items Taken</td></tr></table>
        &emsp;1B. <a target="_blank" href="{{url('purchase-list-eloquent')}}">purchase-list-eloquent</a> && <a target="_blank" href="{{url('purchase-list-no-eloquent')}}">purchase-list-no-eloquent</a>
        <br/>&emsp;The list of buyer, by total items taken in ascending order.
        <table>
            <tr><td>Buyer id</th><td>Buyer Name</th><td>Total Diary Taken</th><td>Total Pen Taken</th><td>Total Eraser Taken</th><td>Total items Taken</th></tr>
            <tr><td>1</td><td>Ronaldo</td><td>1</td><td>3</td><td>4</td><td>8</td></tr>
            <tr><td>4</td><td>Messi</td><td>3</td><td>5</td><td>1</td><td>9</td></tr>
            <tr><td>2</td><td>Ronaldinho</td><td>5</td><td>4</td><td>1</td><td>10</td></tr>
        </table>
        <br/>2. <a target="_blank" href="{{url('record-transfer')}}">record-transfer</a>. There is a record file <code>/storage/app/public/records.json</code>. Transfer this data to <code>records</code> table in most efficient way.
        <br/><br/>3. <a target="_blank" href="{{url('define-callback-js')}}">define-callback-js</a>. Define <code>checkAge()</code> function to use like this.
        <pre>
            var data = {email:'trump@gmail.com', age:70}; // input json.
            checkAge(data, function(email){
                console.log('Email is valid'). // If data.age < 18 it'll log as not valid.
            })
        </pre>
        4. Give examples of: &emsp;<a target="_blank" href="{{url('sort-js')}}">sort-js</a> (array sort) &emsp;<a target="_blank" href="{{url('foreach-js')}}">sort-js</a> (foreach)
        &emsp;<a target="_blank" href="{{url('filter-js')}}">filter-js</a> (array filter) &emsp;<a target="_blank" href="{{url('map-js')}}">map-js</a> (array map) &emsp;<a target="_blank" href="{{url('reduce-js')}}">reduce-js</a> (array reduce)
        <br/><br/>5. <a target="_blank" href="{{url('animation')}}">animation</a>. Animate a box from the top-left edge of window to the bottom-right edge of window, which will return by the same way from the edge.
        <br/><br/>6. <a target="_blank" href="{{url('i-m-funny')}}">i-m-funny</a>. Enlisted the answers.
        <br/>&emsp;&emsp;6a. What do you think about the current condition of software development in bangladesh and how this differ from the other developed countries?
        <br/>&emsp;&emsp;&emsp;&emsp;Also put a comment how we can improve ourselves as a giant digital developed nation in this field?
        <br/>&emsp;&emsp;6b. Two fathers & two sons went for fishing. They caught 3 fish. How its possible to equally distribute these 3 fish among all of them without piecing and without killing any of them?
        <br/><br/>
        <br/><br/>
        <h1 class="m-b-md" style="font-size: 40px">Its done!!</h1>
        <br/><br/>
        <br/><br/>
    </div>
</body>
</html>
