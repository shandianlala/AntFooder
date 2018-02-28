require.config({

    paths: {

        //jq uplan
        "jquery": [
            basePath+"/resources/js/jquery.min",
            "http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min"
        ],
        "uplan": basePath+"/resources/js/uplan.min",

        //自定义脚步
        "common": basePath+"/resources/js/common",
        "plug": basePath+"/resources/js/plug",

        //滚动条
        "slimscroll": basePath+"/resources/lib/js/jquery.slimscroll.min",

        //日历
        "moment": basePath+"/resources/lib/js/moment.min",
        "fullcalendar": basePath+"/resources/lib/js/fullcalendar",
        "fullcalendar_lang": basePath+"/resources/lib/js/zh-cn",

        //时间控件
        "datetimepicker": basePath+"/resources/lib/js/jquery.datetimepicker",
        
        //图表
        "ucharts": basePath+"/resources/lib/js/ucharts-all",

        //轮播图
        "swiper": basePath+"/resources/lib/js/idangerous.swiper.min",

        //树
        "ztree": basePath+"/resources/lib/js/jquery.ztree.all-3.5.min",

        //canvas类库
        "zrender": basePath+'/resources/lib/js/zrender',
        'zrender/shape/Circle': basePath+'/resources/lib/js/zrender',
        'zrender/shape/BezierCurve': basePath+'/resources/lib/js/zrender'
    },
    map: {
        '*': {
            'css': basePath+'/resources/lib/js/css.min.js'
        }
    },
    //不支持AMD规范使用shim
    shim: {
        'common': {
            deps: ['jquery', 'uplan'],
            exports: 'common'
        },
        'plug': {
                deps: ['jquery', 'uplan'],
                exports: 'plug'
            },
        'uplan': {
            deps: ['jquery'],
            exports: 'uplan'
        },
        'echarts': {
            deps: ['jquery'],
            exports: 'echarts'
        },
        'area': {
            deps: ['jquery'],
            exports: 'area'
        },
        'slimscroll': {
            deps: ['jquery'],
            exports: 'slimScroll'
        },
        'datetimepicker': {
            deps: ['jquery', 'css!'+ basePath+'/resources/lib/css/datetimepicker'],
            exports: 'datetimepicker'
        },
        'ztree': {
            deps: ['jquery', 'css!'+ basePath+'/resources/lib/css/zTreeStyle'],
            exports: 'ztree'
        }
    }

});



require(["css!http://at.alicdn.com/t/font_1469608535_6521316"]);

require(["common"]);
