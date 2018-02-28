$(function() {
   /* $(".sidebar").html('\
    <nav class="sidenav">\
        <ul class="nav_ul" id="accordion">\
            <li>\
                <a class="no_link sidebtn" href="javascript:void(0);">\
                    <span class="icon-menu"></span>\
                </a>\
            </li>\
            <li>\
                <a class="bor-left-nav-btm" href="btn.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="按钮">\
                    <div  class="up-pull-left">\
                        <span class="icon-shouye"></span>\
                        首页\
                    </div>\
                </a>\
            </li>\
            <li>\
                <a class="bor-left-nav-btm" href="#collapse_form" data-toggle="collapse" aria-expanded="false">\
                    <div  class="up-pull-left">\
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>\
                        系统管理\
                    </div>\
                    <div  class="up-pull-right">\
                        <span class="icon-down-open"></span>\
                    </div>\
                </a>\
                <ul class="nav_ul2 up-collapse" id="collapse_form" aria-expanded="false">\
                    <li>\
                        <a class="no_link" href="form_more.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="多列内联表单">\
                            <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                用户管理\
                            </div>\
                        </a>\
                    </li>\
                    <li>\
                        <a class="no_link" href="form.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表单">\
                             <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                参数管理\
                            </div>\
                        </a>\
                    </li>\
                </ul>\
            </li>\
            <li>\
                <a class="bor-left-nav-btm" href="#collapse_form1" data-toggle="collapse" aria-expanded="false">\
                    <div  class="up-pull-left">\
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>\
                        服务器管理\
                    </div>\
                    <div  class="up-pull-right">\
                        <span class="icon-down-open"></span>\
                    </div>\
                </a>\
                <ul class="nav_ul2 up-collapse" id="collapse_form1" aria-expanded="false">\
                    <li>\
                        <a class="no_link" href="form_more.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="多列内联表单">\
                            <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                物理服务器管理\
                            </div>\
                        </a>\
                    </li>\
                    <li>\
                        <a class="no_link" href="form.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表单">\
                             <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                虚拟服务器管理\
                            </div>\
                        </a>\
                    </li>\
                </ul>\
            </li>\
            <li>\
                <a class="bor-left-nav-btm" href="#collapse_table" data-toggle="collapse" aria-expanded="false">\
                    <div  class="up-pull-left">\
                        <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="表单"></span>\
                        虚拟机申请\
                    </div>\
                    <div  class="up-pull-right">\
                        <span class="icon-down-open"></span>\
                    </div>\
                </a>\
                <ul class="nav_ul2 up-collapse" id="collapse_table" aria-expanded="false">\
                    <li class="active">\
                        <a class="no_link" href="get_x.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表格">\
                            <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                虚拟服务器申请\
                            </div>\
                        </a>\
                    </li>\
                    <li>\
                        <a class="no_link" href="table.html" data-toggle="tooltip" data-container="#tooltip_box" data-placement="right" title="综合表格">\
                            <div  class="up-pull-left">\
                                <span class="icon-right-dir"></span>\
                                虚拟服务器审批\
                            </div>\
                        </a>\
                    </li>\
                </ul>\
            </li>\
        </ul>\
    </nav>\
')*/


   /* $("#head").html('\
    <div class="up-container-fluid">\
        <div class="up-navbar-header">\
            <button type="button" class="up-navbar-toggle up-collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">\
                <span class="up-sr-only">Toggle navigation</span>\
                <span class="up-icon-bar"></span>\
                <span class="up-icon-bar"></span>\
                <span class="up-icon-bar"></span>\
            </button>\
            <div class="nav_head">\
                <div class="logo">\
                    <a class="no_link" href="index.html">\
                        <img class="middle" src="images/logo.png" height="24">\
                    </a>\
                </div>\
            </div>\
        </div>\
        <div class="up-collapse up-navbar-collapse" id="bs-example-navbar-collapse-1">\
            <ul class="up-nav up-navbar-nav up-navbar-right">\
                <li>\
                    <span class="up-cq-head">你好,admin</span>\
                </li>\
                <li>\
                    <a href="#">修改密码</a>\
                </li>\
                <li>\
                    <a href="#">退出 <span class="icon-zhuxiao"></span>\
                        </a>\
                </li>\
            </ul>\
        </div>\
    </div>\
')*/




    $('[data-toggle="tooltip"]').tooltip();
    $('[data-toggle="popover"]').popover();


    //内容panel最小化 箭头切换
    $(document).on("click", ".up-panel-heading .up-pull-right>.collapse_btn", function(e) {
        e.stopPropagation();
        $(this).toggleClass("icon-down-open icon-up-open");
        $(this).parents(".up-panel").toggleClass("panel_close");
    });

    $(document).on("mousedown", ".up-panel-heading .up-pull-right", function(e) {
            e.stopPropagation();
        })
        //内容全屏 箭头切换
    $(document).on("click", ".up-panel-heading .up-pull-right>.fullscreen_btn", function(e) {
        e.stopPropagation();
        $(this).toggleClass("icon-resize-full icon-resize-small");
        $(this).parents(".up-panel").toggleClass("fullscreen");
    });

    //内容panel close
    $(document).on("click", ".up-panel-heading .up-pull-right>.panel_close", function(e) {
        e.stopPropagation();
        $("#modal_panel_colse").modal('show');
        var _this = this;
        $("#modal_panel_colse .on").off();
        $("#modal_panel_colse .on").on("click", function() {
            $(_this).parents(".up-panel").remove();
        })
    });

    $(document).on("click", ".nav_ul>li>a,.sidetab_first li>a", function() {
        $(this).find(".arrow").toggleClass("icon-right-dir icon-down-dir");
    });


    //侧栏状态切换
    $(document).on("click", ".sidebtn", function() {
        $("#wrap").toggleClass("minside");
    });

    $(document).on("click", ".sidetab_btn", function() {
        $("#wrap").toggleClass("maxsidebar");
    });
    $(document).on("click", ".sidetab_right_btn", function() {
        $("#wrap").toggleClass("maxsidebar_right");
    });


    $(document).on("focus blur", ".nav_search input", function() {
        $(".nav_search i").toggleClass('icon-level-down icon-search')
    });

    $(document).on("click", ".sidetab_first li>a:not(a[data-toggle='collapse'])", function() {
        $(".sidetab_first li>a").removeClass('active');
        $(this).addClass('active');
        $(this).parents("li").children("a").addClass('active');
    });

    $(document).on("focus", ".home", function() {
        $(".nav_login_code").slideDown();
        $(this).css("backgroundColor", "#0087b4");
    });
    $(document).on("blur", ".home", function() {
        $(".nav_login_code").slideUp()
        $(this).css("backgroundColor", "transparent");
    })



    $(document).on("click", "#cost1 .toggle_icon", function() {
        $(this).find("i").toggleClass('icon-toggle-off icon-toggle-on')
    });


    $(document).on("blur", ".form_regular input[type='text'],.form_regular input[type='password']", function() {
        var reg = new RegExp($(this).attr("data-check"), "g");
        if (reg.test($(this).val())) {
            $(this).parents(".form_regular").addClass('up-has-success').removeClass('up-has-error');
            $(this).parents(".input_warning").children('span').hide()
            $(this).attr("data-jud", true);
        } else {
            $(this).parents(".form_regular").removeClass('up-has-success').addClass('up-has-error');
            $(this).parents(".input_warning").children('span').show()
            $(this).attr("data-jud", false);
        }
    });


    $(document).on("change", ".file_box>input", function() {
        $(this).siblings("label").not(".up-btn").html($(this).get(0).files[0].name)
    });


    $(document).on("click", ".multiple_dropdown .up-dropdown-menu li", function() {
        if ($(this).is("[role='presentation']")) {
            $(this).toggleClass('active');
        } else if ($(this).is(".select_all")) {
            $(this).siblings("[role='presentation']").addClass('active');
        }
        var str = '';
        $(this).parents('.multiple_dropdown').find("[role='presentation'].active").each(function() {
            str += $(this).find("span").text() + ","
        })
        $(this).parents('.multiple_dropdown').find(".up-dropdown-toggle input").val(str.replace(/,$/, ""));
        return false;
    });
    $(document).on("focus", ".multiple_dropdown .up-dropdown-toggle input", function() {
        $(this).blur();
    });


    $(document).on("click", ".login_code_btn", function() {
        $(".login_code").fadeIn('100');
    });
    $(document).on("click", ".login_code>div>input", function() {
        $(".login_code").fadeOut('100');
    });
    $(document).on("click", ".login_bg_btn>ul>li", function() {
        $(".login_bg li").css("zIndex", "1").eq($(this).index()).css("zIndex", "2");
    });

    $(document).on("click", ".filtrate ul li a", function() {
        $(this).parents('li').hide();
        $(".filtrate_head").append('<div>' + $(this).siblings("strong").text() + ': <span class="up-text-danger">' + $(this).text() + ' <i data-parent="' + $(this).parents('li').index() + '" class="icon-cancel"></i></span></div>')
    });
    $(document).on("click", ".filtrate_head i", function() {
        $(this).parent().parent().remove();
        $('.filtrate ul li').eq($(this).attr("data-parent")).show();
    });
    $(".nav_dropdown").hover(function() {
        $(this).addClass("up-open");
    }, function() {
        $(this).removeClass("up-open");
    })


    $(document).on("click", ".toggle_radio .up-btn-group button", function() {
        $(this).parents('.toggle_radio').find('button').removeClass('up-btn-primary').addClass('up-btn-default');
        $(this).removeClass('up-btn-default').addClass('up-btn-primary');
    });
    $(document).on("click", ".toggle_checkbox .up-btn-group button", function() {
        $(this).toggleClass('up-btn-default up-btn-primary');
    });
    $(document).on("click", ".checkbox_bg>label>input", function() {
        $(this).parent().toggleClass('active');
    });
    $(document).on("change", ".select_box>label>input[type='checkbox']", function() {
        $(".select_box input[type='checkbox']").each(function() {
            if ($(this).is(":checked")) {
                $(this).siblings('i').addClass('icon-check').removeClass('icon-check-empty');
                $(this).parent().addClass('active');
            } else {
                $(this).siblings('i').removeClass('icon-check').addClass('icon-check-empty');
                $(this).parent().removeClass('active');
            }
        })
    });
    $(document).on("change", ".select_box>label>input[type='radio']", function() {
        $(".select_box input[type='radio']").each(function() {
            if ($(this).is(":checked")) {
                $(this).siblings('i').addClass('icon-ok-circle').removeClass('icon-circle-thin');
                $(this).parent().addClass('active');
            } else {
                $(this).siblings('i').removeClass('icon-ok-circle').addClass('icon-circle-thin');
                $(this).parent().removeClass('active');
            }
        })
    });

    $(".select_box input[type='checkbox']").each(function() {
        if ($(this).is(":checked")) {
            $(this).siblings('i').addClass('icon-check').removeClass('icon-check-empty');
            $(this).parent().addClass('active');
        } else {
            $(this).siblings('i').removeClass('icon-check').addClass('icon-check-empty');
            $(this).parent().removeClass('active');
        }
    })
    $(".select_box input[type='radio']").each(function() {
        if ($(this).is(":checked")) {
            $(this).siblings('i').addClass('icon-ok-circle').removeClass('icon-circle-thin');
            $(this).parent().addClass('active');
        } else {
            $(this).siblings('i').removeClass('icon-ok-circle').addClass('icon-circle-thin');
            $(this).parent().removeClass('active');
        }
    })


    $(document).on("click", ".sidetab .up-pull-right i,.nav_ul .up-pull-right i", function() {
        return false;
    })

    $(document).on("click", ".selected_menu_box a", function() {
        $(this).html("+");
        $(this).parents("li").appendTo(".select_menu_box");
    });

    $(document).on("click", ".select_menu_box li", function() {
        $(this).appendTo(".selected_menu_box");
        $(this).find("a").html("×");
    });

    $(document).on("click", ".nav_ul>li>a>i", function(event) {
        event.stopPropagation();
    });

    $(document).on("focus click", ".login_box_con .city_select,.login_box_con .icon-down-dir", function(event) {
        $(".primary_option").show();
        event.stopPropagation();
    });
    $(document).on("click", ".login_main,.login_foot", function() {
        $(".primary_option").hide();
    });
    $(document).on("click", ".primary_option dd", function(event) {
        $(".primary_option").hide();
        $('.login_box_con .city_select').val($(this).html());
        $(".primary_option .active").removeClass('active');
        $(this).addClass("active");
        event.stopPropagation();
    });
    $(document).on("click", ".login_box_head a", function(event) {
        $(".login_box_head .active").removeClass('active');
        $(this).addClass("active");
        $(".login_box_head span").toggleClass('login_box_head_border_right')
    });
    $(document).on("click", ".primary_option", function(event) {
        event.stopPropagation();
    });
    $(document).on("click", ".primary_option dt a", function(event) {
        $(".primary_option").hide();
    });







    anchor(); //锚点




    /*--------------------------------自定义滚动条------------------------------------*/


    if ($('.sidetab_scroll').length > 0 || $('.sidenav').length > 0 || $('.page_scroll').length > 0 || $('.page_scroll2').length > 0) {
        require(["slimscroll"], function() {
            $('.sidetab_scroll').slimScroll({
                color: '#666',
                railColor: "#999",
                size: '5px',
                railVisible: true,
                height: '100%'
            });
            $('.sidenav').slimScroll({
                color: '#fff',
                railColor: "#fff",
                size: '5px',
                railVisible: true,
                height: '100%'
            });
            $('.page_scroll').slimScroll({
                color: '#000',
                railColor: "#000",
                size: '5px',
                railVisible: true,
                height: '100%'
            });
            $('.page_scroll2').slimScroll({
                color: '#666',
                railColor: "#999",
                size: '5px',
                railVisible: true,
                height: '100%',
                allowPageScroll: true
            });

        })
    }



    /*  -------------------------------------iframe高度自适应------------------------------------*/


    function iFrameHeight() {
        var ifm = document.getElementById("iframepage");
        var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
        if (ifm != null && subWeb != null) {
            ifm.height = subWeb.body.scrollHeight;
            ifm.width = subWeb.body.scrollWidth;
        }
    }


    /*---------------------------------------普通拖拽------------------------------------*/
    function drag(grip, box) {
        if (box) {
            $(document).on("dragstart", box, function(e) {
                return false;
            });
        } else {
            $(document).on("dragstart", grip, function(e) {
                return false;
            });
        }
        $(document).on("mousedown", grip, function(e) {
            e.stopPropagation();
            $(this).css("cursor", "move");
            if (box) {
                var _this = $(this).parents(box);
            } else {
                var _this = $(this)
            }
            _this.css("zIndex", "999999");
            var differX = e.pageX - _this.offset().left;
            var differY = e.pageY - _this.offset().top;

            function move(e) {
                e.stopPropagation();
                $(_this).offset({
                    'left': e.pageX - differX,
                    'top': e.pageY - differY
                });
            }
            $(document).on("mousemove", move);

            function moveEnd() {
                if (box) {
                    $(_this).find(grip).css("cursor", "pointer");
                } else {
                    $(_this).css("cursor", "pointer");
                }
                _this.css("zIndex", "1");
                $(document).off("mousemove", move);
                $(document).off("mouseup", moveEnd);
            }
            $(document).on("mouseup", moveEnd);
        });
    }



    /*---------------------------------------排序拖拽------------------------------------*/
    function dragSize() {
        $(".dragSize").append("<div class='dragSize_btn'></div>");
        if ($(".dragSize").css("position") == "static") {
            $(".dragSize").css("position", "relative");
        }
        $(document).on("mousedown", ".dragSize_btn", function(e) {
            e.stopPropagation();
            $(document).css("cursor", "e-resize");
            var startX = e.pageX;
            var _this = $(this).parent();
            var startW = _this.width();
            $(document).on("dragstart", clear);

            function clear(e) {
                return false;
            }

            function move(e) {
                e.stopPropagation();
                _this.css("width", startW + e.pageX - startX)
            }
            $(document).on("mousemove", move);

            function moveEnd() {
                $(document).css("cursor", "pointer");
                $(document).off("mousemove", move);
                $(document).off("mouseup", moveEnd);
                $(document).off("dragstart", clear);
                var grid = Math.round(_this.width() / _this.parent().width() * 12) > 0 ? Math.round(_this.width() / _this.parent().width() * 12) : 1;
                _this.css({
                    "width": "",
                    "-webkit-transition": "width .1s linear",
                    "transition": "width .1s linear",
                    "-moz-transition": "width .1s linear",
                    "-o-transition": "width .1s linear"
                });
                setTimeout(function() {
                    _this.css({
                        "width": "",
                        "-webkit-transition": "",
                        "transition": "",
                        "-moz-transition": "",
                        "-o-transition": "-"
                    });
                }, 300)
                if ($(window).width() < 992) {
                    _this.removeClass("up-col-sm-1 up-col-sm-2 up-col-sm-3 up-col-sm-4 up-col-sm-5 up-col-sm-6 up-col-sm-7 up-col-sm-8 up-col-sm-9 up-col-sm-10 up-col-sm-11 up-col-sm-12");
                    _this.addClass("up-col-sm-" + grid);
                } else if ($(window).width() < 1200) {
                    _this.removeClass("up-col-md-1 up-col-md-2 up-col-md-3 up-col-md-4 up-col-md-5 up-col-md-6 up-col-md-7 up-col-md-8 up-col-md-9 up-col-md-10 up-col-md-11 up-col-md-12");
                    _this.addClass("up-col-md-" + grid);
                } else {
                    _this.removeClass("up-col-lg-1 up-col-lg-2 up-col-lg-3 up-col-lg-4 up-col-lg-5 up-col-lg-6 up-col-lg-7 up-col-lg-8 up-col-lg-9 up-col-lg-10 up-col-lg-11 up-col-lg-12");
                    _this.addClass("up-col-lg-" + grid);

                }

            }
            $(document).on("mouseup", moveEnd);
        });
    }
    dragSize();

    var dragFn = {
        grip: null,
        box: null,
        differXY: [],
        carshbox: null,
        timer: null,
        location: null,
        dragrankstart: function() {},
        dragrelease: function() {

        },
        dragcrash: function() {
            var dragleft = $(this.box).offset().left + $(this.box).width() / 2;
            var dragtop = $(this.box).offset().top + $(this.grip).height() / 2;
            for (var i = 0; i < this.carshbox.length; i++) {
                if ($(this.carshbox).eq(i).width() > $(this.box).width() + 50) {
                    if ($(this.carshbox).eq(i).offset().left < $(this.box).offset().left && $(this.carshbox).eq(i).offset().left + $(this.carshbox).eq(i).width() > $(this.box).offset().left + $(this.box).width() && $(this.carshbox).eq(i).offset().top < dragtop && $(this.carshbox).eq(i).offset().top + $(this.carshbox).eq(i).height() > dragtop) {
                        if ($(this.location).index() > $(this.carshbox).eq(i).index()) {
                            $(this.location).insertBefore($(this.carshbox).eq(i))
                        } else {
                            $(this.location).insertAfter($(this.carshbox).eq(i))
                        }
                    }
                } else {
                    if ($(this.carshbox).eq(i).offset().left < dragleft && $(this.carshbox).eq(i).offset().left + $(this.carshbox).eq(i).width() > dragleft && $(this.carshbox).eq(i).offset().top < dragtop && $(this.carshbox).eq(i).offset().top + $(this.carshbox).eq(i).height() > dragtop) {
                        if ($(this.location).index() > $(this.carshbox).eq(i).index()) {
                            $(this.location).insertBefore($(this.carshbox).eq(i))
                        } else {
                            $(this.location).insertAfter($(this.carshbox).eq(i))
                        }
                    }
                }
            }

        },
        dragobj: function(e) {

            var _this = e.data;
            _this.box = _this._box;
            _this.grip = this;
            _this.box = ($(this).parents().is(_this.box)) ? $(this).parents().filter(_this.box) : _this.grip;
            _this.carshbox = $(_this._box).not(_this.box);
            _this.cleardefaultdrag();
            _this.dragstart(e);
            return _this;
        },
        cleardefaultdrag: function() {
            $(document).on("dragstart", this.box, function(e) {
                return false;
            });
        },
        dragstart: function(e) {
            this.differXY[0] = e.pageX - $(this.box).offset().left + $(this.box).parent().offset().left;
            this.differXY[1] = e.pageY - $(this.box).offset().top + $(this.box).parent().offset().top;
            $(this.grip).css("cursor", "move");
            $(this.box).css("zIndex", "999999");
            $(document).on("mousemove", this, this.dragmove);
            var _this = this;
            $(document).one("mouseup", function(e) {
                _this.dragend(e);
            });
            $(this.box).css({
                'left': e.pageX - this.differXY[0],
                'top': e.pageY - this.differXY[1],
                'position': 'absolute'
            });
            $(this.location).css({
                'width': $(this.box).outerWidth() - 0.5,
                'height': $(this.box).outerHeight(),
                'border': '1px dotted #09C',
                'float': "left",
                'margin-bottom': '17px'
            });
            $(this.location).show();
            $(this.location).insertBefore($(this.box))
            return this;
        },
        dragmove: function(e) {
            var _this = e.data;
            e.stopPropagation();
            $(_this.box).css({
                'left': e.pageX - _this.differXY[0],
                'top': e.pageY - _this.differXY[1],
                'position': 'absolute'
            });
            $(document).one("mouseup", function(e) {
                _this.dragend(e)
            });
            _this.dragcrash();
            return _this;
        },
        dragend: function(e) {
            $(document).off("mousemove", this.dragmove);
            $(this.grip).css("cursor", "pointer");
            $(this.box).css("zIndex", "1");
            var _left = $(this.location).offset().left - $(this.box).parent().offset().left;
            var _top = $(this.location).offset().top - $(this.box).parent().offset().top;
            $(this.box).css({
                "-webkit-transition": "all .3s linear",
                "-moz-transition": "all .3s linear",
                "-o-transition": "all .3s linear",
                'left': _left,
                'top': _top,
            });
            var _this = this;
            setTimeout(function() {
                $(_this.location).hide();
                $(_this.location).after($(_this.box))
                $(_this.box).css({
                    "position": "relative",
                    "top": "0",
                    "left": "0",
                    "-webkit-transition": "",
                    "transition": "",
                    "-moz-transition": "",
                    "-o-transition": ""
                });
            }, 300)



        },
        init: function() {
            $(document).on("mousedown", this.grip, this, this.dragobj)
            this._box = this.box;
            this.location = document.createElement("div");
        }
    }



    var params = {
        grip: ".dragable .up-panel-heading",
        box: ".up-tab-content .up-panel.dragable:not(.fullscreen)"
    }


    dragFn = $.extend(dragFn, params);
    dragFn.init()



    /*---------------------------------------弹窗拖动&&居中------------------------------------*/
    var owidth = $(window).width();
    var oheight = $(window).height();
    $(window).resize(function() {
        owidth = $(window).width();
        oheight = $(window).height();
    });

    $('.up-modal').on('show.bs.modal', function(e) {
        $(this).show("0");
        /* $(this).find(".page_scroll").parents(".up-modal-body").css('height',oheight*0.6)*/
        var oTop = ((oheight - $(this).find(".up-modal-content").outerHeight()) / 2 - 30) > 30 ? (oheight - $(this).find(".up-modal-content").outerHeight()) / 2 - 30 : 30;
        $(this).find(".up-modal-content").css({
            'left': owidth / 2,
            'top': oTop
        });
        var _this = this;
        $(window).resize(function() {
            owidth = $(window).width();
            oheight = $(window).height();
            var oTop = ((oheight - $(_this).find(".up-modal-content").outerHeight()) / 2 - 30) > 30 ? (oheight - $(_this).find(".up-modal-content").outerHeight()) / 2 - 30 : 30;
            $(_this).find(".up-modal-content").css({
                'left': owidth / 2,
                'top': oTop
            });
        });
        if ($(this).attr("data-autoclose") == "true") {
            setTimeout(function() {
                $(_this).modal('hide')
            }, 2000);
        }
    }); //居中

    drag(".up-modal[data-drag='true'] .up-modal-header", ".up-modal-content") //拖拽



    /*-------------------------------锚点 刷新不改变tab位置-------------------------------------*/

    $(document).on("click", "a[data-toggle='tab']", function() {
        if ($(this).attr("data-href")) {
            window.location.hash = $(this).attr("data-href").replace("#", "/");
        } else {
            window.location.hash = $(this).attr("href").replace("#", "/");
        }
    });

    function anchor() {
        var hash = window.location.hash;
        var anchorID = hash.split("/");
        if (anchorID.length > 0 && anchorID[0] == "#") {
            for (var i = 1; i < anchorID.length; i++) {
                $(".sidetab a[data-toggle='tab'][href='#" + anchorID[i] + "']").parents("li").children("a").addClass('active');
                $(".sidetab a[data-toggle='tab'][href='#" + anchorID[i] + "']").parents("li").siblings().find("a").removeClass('active');
                $(".up-tab-content #" + anchorID[i]).addClass('up-active');
                $(".up-tab-content #" + anchorID[i]).siblings().removeClass('up-active');
                $("a[data-toggle='tab'][href='#" + anchorID[i] + "']:not(.sidetab a)").parent().addClass('up-active');
                $("a[data-toggle='tab'][href='#" + anchorID[i] + "']:not(.sidetab a)").parent().siblings().removeClass('up-active');
            }
        }
    }





    /*---------------------------------------------时间控件 选择器要以plug_date开头----------------------------------------------------------*/

    if ($('[class*="plug_date"]').length > 0) {

        require(["datetimepicker"], function() {
            $('.plug_date_example').datetimepicker({
                lang: "zh",
                format: 'Y-m-d H:i',
                scrollInput: false
            });
            $('.plug_date_example2').datetimepicker({
                lang: "zh",
                timepicker: false,
                format: 'Y-m-d',
                scrollInput: false
            });
            $('.plug_date_example3').datetimepicker({
                lang: "zh",
                datepicker: false,
                format: 'H:i',
                scrollInput: false
            });

            $('.plug_date_start').datetimepicker({
                lang: "zh",
                format: 'Y-m-d',
                scrollInput: false,
                onShow: function(ct, input) {
                    this.setOptions({
                        maxDate: $(input).parents('form').find('.plug_date_end').val() ? $(input).parents('form').find('.plug_date_end').val() : false,
                        formatDate: 'Y-m-d'
                    })
                },
                timepicker: false
            });
            $('.plug_date_end').datetimepicker({
                lang: "zh",
                format: 'Y-m-d',
                scrollInput: false,
                onShow: function(ct, input) {
                    this.setOptions({
                        minDate: $(input).parents('form').find('.plug_date_start').val() ? $(input).parents('form').find('.plug_date_start').val() : false,
                        formatDate: 'Y-m-d'
                    })
                },
                timepicker: false
            });


            function dateFn(arr) {
                var jud = true;
                $('.plug_date_multiple').datetimepicker({
                    lang: "zh",
                    format: 'Y/m/d',
                    closeOnDateSelect: 31,
                    defaultSelect: false,
                    scrollInput: false,
                    onGenerate: function(ct, input) {
                        if (jud) {
                            this.arr = arr;
                            this.arr.sort();
                            this.day = [];
                            jud = false;
                            var str = "";
                            for (i in this.arr) {
                                this.day.push(this.arr[i].split("/")[2] + ",");
                                if (i == this.arr.length - 1) {
                                    this.day[i] = this.arr[i].split("/")[2]
                                }
                            }
                            $(".plug_date_multiple").html(this.day);
                            this.setOptions({
                                highlightedDates: this.arr
                            });
                        }
                        $(this).find('.xdsoft_save_selected').html("确定");
                    },
                    onShow: function(ct) {
                        this.setOptions({
                            minDate: ct.getFullYear() + "/" + (ct.getMonth() + 1) + "/1",
                            maxDate: ct.getFullYear() + "/" + (ct.getMonth() + 1) + "/31",
                            highlightedDates: this.arr,
                            formatDate: "Y/m/d"
                        })
                    },
                    onSelectDate: function(ct, input) {

                        if (this.arr.length > 0) {
                            for (i in this.arr) {
                                if (this.arr[i].split("/")[2] != $(input).val().split("/")[2] || this.arr.length == 0) {
                                    if (i == this.arr.length - 1) {
                                        this.arr.push($(input).val());
                                        this.arr.sort();
                                    } else {
                                        continue;
                                    }
                                } else {

                                    if (this.arr.length == 1) {
                                        this.arr = [];
                                        this.setOptions({
                                            highlightedDates: ["2050/01/01"]
                                        });

                                    } else {
                                        this.arr.splice(i, 1);
                                    }
                                    break;
                                }
                            }
                        } else {
                            this.arr.push($(input).val());
                            this.arr.sort();
                        }

                        this.setOptions({
                            highlightedDates: this.arr
                        });

                        this.day = [];
                        for (i in this.arr) {
                            this.day.push(this.arr[i].split("/")[2] + ",");
                            if (i == this.arr.length - 1) {
                                this.day[i] = this.arr[i].split("/")[2]
                            }
                        }
                        $(".plug_date_multiple").html(this.day);
                    },
                    onChangeMonth: function(ct) {
                        this.arr = [];
                        this.day = [];
                        $(".plug_date_multiple").html("");
                        this.setOptions({
                            minDate: ct.getFullYear() + "/" + (ct.getMonth() + 1) + "/1",
                            maxDate: ct.getFullYear() + "/" + (ct.getMonth() + 1) + "/31",
                            formatDate: "Y/m/d"
                        })
                    },
                    scrollMonth: false,
                    timepicker: false,
                    id: "multiple_date"
                });




            }

            /* arr = ["2015/7/30"]
             arr2 = ["2015/7/05", "2015/7/02", "2015/7/22", "2015/7/12"]
             dateFn(arr)
             dateFn(arr2)*/
        })
    }




    /*---------------------------------------------地址控件 选择器固定----------------------------------------------------------*/

    /*if ($('#s_province').length > 0 || $('#s_city').length > 0 || $('#s_county').length > 0) {
        require(["area"], function() {
            _init_area();
        })
    }*/


    /*------------------------------日历------------------------------*/
    //单选下拉框
    $(document).on("click", ".choice_box:not(.choice_multiple) .up-dropdown-menu>li>a", function() {
        $(this).addClass('active');
        $(this).parent().siblings('li').find("a").removeClass('active');
        $(this).parents(".up-dropdown").find(".up-dropdown-toggle").html($(this).html());
    })


    //多选下拉宽
    $(document).on("click", ".choice_multiple .up-dropdown-menu>li>a", function() {
        if ($(this).is(".all_actor") == false) {
            $(this).toggleClass('active');
            if ($(this).parents(".choice_multiple").find(".all_actor").parent().nextAll('li').find("a.active").length > 0) {
                $(this).parents(".choice_multiple").find(".unfixed").removeClass('active');
            } else {
                $(this).parents(".choice_multiple").find(".unfixed").addClass('active');
            }
        } else {
            $(this).parent().prevAll('li').find("a").removeClass('active');
            $(this).parent().nextAll('li').find("a").addClass('active');
        }
        if ($(this).is(".unfixed")) {
            $(this).parent().nextAll('li').find("a").removeClass('active');
            $(this).addClass('active');
        }
        $(this).parents(".choice_multiple").find(".actorbox").html("")
        $(this).parents(".choice_multiple").find(".up-dropdown-menu li a.active:not(.unfixed) i").clone().appendTo($(this).parents(".choice_multiple").find(".actorbox"));
        $(this).parents(".choice_multiple").find(".up-dropdown-menu li a.active.unfixed span").clone().appendTo($(this).parents(".choice_multiple").find(".actorbox"));
        $('.actorbox [data-toggle="tooltip"]').tooltip();
        return false;
    })
    $(document).on("change", "#calendar_fullday3", function() {
        $(this).parents('.grid_layout').find(".plug_date_example3").toggle();
    })




    if ($("#calendar").length > 0) {
        require(["fullcalendar", "fullcalendar_lang", "css!lib/css/fullcalendar"], function() {

            //左nav
            $(document).on("click", ".calendar_nav>li>a", function() {
                $(this).toggleClass('active');
                if ($(this).hasClass('active')) {
                    $(this).parents('.calendar_nav').find("ul li a").addClass('active');
                } else {
                    $(this).parents('.calendar_nav').find("ul li a").removeClass('active');
                }
            })

            $(document).on("click", ".calendar_nav ul>li>a", function() {
                $(this).toggleClass('active');
                $(this).parents('.calendar_nav').children("li").children("a").removeClass('active');
            })

            //隐藏左nav
            $(document).on("click", ".calendar_left_btn", function() {
                $("#calendar").toggleClass('maximize');
            })

            //搜索框阻止冒泡
            $(document).on("click", ".dropdown_search", function() {
                return false;
            })








            //添加备注
            $(document).on("focus", ".amend_remark textarea", function() {
                $(this).siblings(".amend_remark>div").show();
                $(this).height(80);
            })
            $(document).on("click", ".amend_remark .up-btn", function() {
                $(this).parent().hide();
                $(this).parent().siblings(".amend_remark textarea").height(20);
            })


            //添加附件
            $(document).on("change", "#add_accessory", function() {
                var src = '<div class="accessory_box up-clearfix">\
                <div class="up-pull-left">\
                    <i class="icon-iconfont90"></i> <span>' + this.files[0].name + '</span>\
                </div>\
                <div class="up-pull-right">\
                    <i class="icon-cancel"></i>\
                </div>\
            </div>'
                $(".accessory_preview").append(src);
            })

            //删除附件
            $(document).on("click", ".accessory_box .icon-cancel", function() {
                $(this).parents(".accessory_box").remove();
            })



            //全天
            $(document).on("click", "#calendar_fullday", function() {
                $("#create_calendar_modar .create_calendar_time .plug_date_example3").toggle();
            });
            //下拉
            $(document).on("click", "#create_calendar_modar .priority_levels:not(.actor_select) li a", function() {
                $(this).parents(".up-dropdown").find(".up-dropdown-toggle").html($(this).html()).attr("data-level", $(this).attr("data-level"));
            });


            //左边侧栏高度         
            $(".calendar_left .up-tab-pane").height($(window).height() - 230);

            //时间加0
            function addZero(sum) {
                if (sum >= 10) {
                    return sum;
                } else {
                    return "0" + sum;
                }
            }

            $('#calendar').fullCalendar({
                header: {
                    left: 'today,prev,next',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                lang: 'zh-cn',
                defaultDate: '2015-08-12',
                selectable: true,
                selectHelper: true,
                contentHeight: $(window).height() - 130,
                windowResize: function(view) {
                    $('#calendar').fullCalendar('option', 'contentHeight', $(window).height() - 130);
                    $(".calendar_left .up-tab-pane").height($(window).height() - 230);
                },
                timezone: 'local',

                select: function(start, end, jsEvent) {
                    //创建新任务初始
                    $(".create_calendar").css({
                        'left': jsEvent.pageX,
                        'top': jsEvent.pageY
                    }).toggle();
                    $("#create_calendar_modar .principal_select:not(.actor_select) .up-dropdown-menu>li>a").removeClass('active');
                    $("#create_calendar_modar .up-dropdown:not(.actor_select)").find(".up-dropdown-toggle").html(function() {
                        return $(this).parents(".up-dropdown").find("li[role='presentation']").eq(0).children('a').addClass('active').html()
                    }).attr("data-level", 1);
                    $("#create_calendar_modar .up-modal-footer button").off();
                    $("#create_calendar_modar2 .up-modal-footer button").off();
                    $(".create_calendar_time .plug_date_start").val(start._d.getFullYear() + "-" + addZero(start._d.getMonth() + 1) + "-" + addZero(start._d.getDate()));
                    $(".create_calendar_time .plug_date_end").val(end._d.getFullYear() + "-" + addZero(end._d.getMonth() + 1) + "-" + addZero(end._d.getDate()));
                    $(".create_calendar_time .plug_date_example3").val("00:00");
                    $("#calendar_fullday").attr("checked", true);
                    //创建新任务
                    $(document).on("click", "#create_calendar_modar .up-modal-footer button", function() {
                        if ($("#create_calendar_modar .create_calendar_title").val() == "") {
                            $("#create_calendar_modar .create_calendar_title").focus();
                        } else {
                            $('#create_calendar_modar').modal('hide')
                            var eventData;
                            var color;
                            if ($("#create_calendar_modar .create_calendar_time .priority_levels>a").attr("data-level") == 1) {
                                color = "rgba(0,153,204,.5)";
                            } else if ($("#create_calendar_modar .create_calendar_time .priority_levels>a").attr("data-level") == 2) {
                                color = "rgba(241,96,0,.5)";
                            } else {
                                color = "rgba(224,33,34,.5)";
                            }
                            eventData = {
                                title: $("#create_calendar_modar .create_calendar_title").val(),
                                start: $("#create_calendar_modar .create_calendar_time .plug_date_start").val(),
                                end: $("#create_calendar_modar .create_calendar_time .plug_date_end").val(),
                                color: color,
                                principal: ($("#create_calendar_modar .principal_select:not(.actor_select)>a>i").html() != "" ? $("#create_calendar_modar .principal_select:not(.actor_select)>a>span:eq(0)").html() : "待认领")
                            };
                            //是否全天
                            if ($("#calendar_fullday").is(':checked') == false) {
                                eventData.start = $("#create_calendar_modar .create_calendar_time .plug_date_start").val() + "T" + $("#create_calendar_modar .create_calendar_time .plug_date_example3.start").val() + ":00";
                                eventData.end = $("#create_calendar_modar .create_calendar_time .plug_date_end").val() + "T" + $("#create_calendar_modar .create_calendar_time .plug_date_example3.end").val() + ":00";
                            }
                            $('#calendar').fullCalendar('renderEvent', eventData, true);
                            $("#create_calendar_modar textarea").val('');
                            $(".create_calendar").hide();
                        }
                    })

                    //创建新日程
                    $(document).on("click", "#create_calendar_modar2 .up-modal-footer button", function() {
                        if ($("#create_calendar_modar2 .create_calendar_title").val() == "") {
                            $("#create_calendar_modar2 .create_calendar_title").focus();
                        } else {
                            $('#create_calendar_modar2').modal('hide')
                            var eventData;
                            eventData = {
                                title: $("#create_calendar_modar2 .create_calendar_title").val(),
                                start: $("#create_calendar_modar2 .create_calendar_time .plug_date_start").val(),
                                end: $("#create_calendar_modar2 .create_calendar_time .plug_date_end").val(),
                                borderColor: "#999",
                                textColor: "#333",
                                backgroundColor: "#fff",
                                principal: "日",
                                principalColor: "#000",
                                task: false
                            };
                            $('#calendar').fullCalendar('renderEvent', eventData, true);
                            $("#create_calendar_modar2 textarea").val('');
                            $(".create_calendar").hide();
                        }
                    })

                    $('#calendar').fullCalendar('unselect');
                },
                eventClick: function(calEvent, jsEvent, view) {
                    //点击任务
                    if (calEvent.task) {
                        $(".modal_right").addClass('active');
                        $(".modal_bg").show();
                        $(".modal_bg").click(function() {
                            $(".modal_right").removeClass('active');
                            $(".modal_bg").hide();
                        })
                        $(".modal_right .journey_title,#calendar_fullday2,.modal_right .priority_levels>ul a,.modal_right .principal_select:not(.actor_select) a[role='menuitem']").off();
                        $(".modal_right .plug_date_end,.modal_right .end,.modal_right .plug_date_start,.modal_right .start").off("change")
                        $(".modal_right .journey_title").val(calEvent.title);
                        $(".modal_right .plug_date_start").val(calEvent._start._d.getFullYear() + "-" + addZero(calEvent._start._d.getMonth() + 1) + "-" + addZero(calEvent._start._d.getDate()));
                        $(".modal_right .plug_date_end").val(calEvent._end._d.getFullYear() + "-" + addZero(calEvent._end._d.getMonth() + 1) + "-" + addZero(calEvent._end._d.getDate()));

                        $(".modal_right .principal_select:not(.actor_select) .up-dropdown-toggle").html("<i>" + calEvent.principal.charAt(0) + "</i><span>" + calEvent.principal + "</span>");
                        for (var i = 0; i < $(".modal_right .principal_select:not(.actor_select) a[role='menuitem']").length; i++) {
                            if ($(".modal_right .principal_select:not(.actor_select) a[role='menuitem']:eq(" + i + ") span").html() == calEvent.principal) {
                                $(".modal_right .principal_select:not(.actor_select) a[role='menuitem']").removeClass("active");
                                $(".modal_right .principal_select:not(.actor_select) a[role='menuitem']:eq(" + i + ")").addClass("active");
                            }
                        }

                        if (calEvent.color == "#09c") {
                            $(".modal_right .priority_levels>a").html('<i class="icon-circle-empty up-text-primary"></i>普通').attr("data-level", "1");
                        } else if (calEvent.color == "#f90") {
                            $(".modal_right .priority_levels>a").html('<i class="icon-circle-empty up-text-primary"></i>紧急').attr("data-level", "2");
                        } else {
                            $(".modal_right .priority_levels>a").html('<i class="icon-circle-empty up-text-primary"></i>非常紧急').attr("data-level", "3");
                        }

                        if (calEvent._allDay) {
                            $("#calendar_fullday2").attr("checked", true);
                            $(".amend_calendar_time .select_box label i").addClass("icon-check").removeClass("icon-check-empty");
                            $(".amend_calendar_time .plug_date_example3").hide();
                        } else {
                            $("#calendar_fullday2").attr("checked", false);
                            $(".amend_calendar_time .select_box label i").addClass("icon-check-empty").removeClass("icon-check");
                            $(".amend_calendar_time .start").val(addZero(calEvent._start._d.getHours()) + ":" + addZero(calEvent._start._d.getMinutes())).show();
                            $(".amend_calendar_time .end").val(addZero(calEvent._end._d.getHours()) + ":" + addZero(calEvent._end._d.getMinutes())).show();
                        }


                        $(".modal_right .journey_title").on("change", function() {
                            calEvent.title = $(this).val();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $(".modal_right .plug_date_start,.modal_right .start").on("change", function() {
                            if (calEvent._allDay) {
                                calEvent.start = $(".modal_right .plug_date_start").val();
                            } else {
                                calEvent.start = $(".modal_right .plug_date_start").val() + "T" + $(".modal_right .start").val() + ":00";
                            }
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $(".modal_right .plug_date_end,.modal_right .end").on("change", function() {
                            if (calEvent._allDay) {
                                calEvent.end = $(".modal_right .plug_date_end").val();
                            } else {
                                calEvent.end = $(".modal_right .plug_date_end").val() + "T" + $(".modal_right .end").val() + ":00";
                            }
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $("#calendar_fullday2").on("change", function() {
                            calEvent.allDay = $(this).is(':checked');
                            $(".amend_calendar_time .plug_date_example3").toggle();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $(".modal_right .priority_levels>ul a").on("click", function() {
                            $(this).parents('.priority_levels').find('.up-dropdown-toggle').html($(this).html()).attr("data-level", $(this).attr("data-level"));
                            if ($(this).attr("data-level") == 1) {
                                calEvent.color = "rgba(0,153,204,.5)";
                            } else if ($(this).attr("data-level") == 2) {
                                calEvent.color = "rgba(241,96,0,.5)";
                            } else {
                                calEvent.color = "rgba(224,33,34,.5)";
                            }
                            $('#calendar').fullCalendar('updateEvent', calEvent);

                        })

                        $(".modal_right .principal_select:not(.actor_select) a[role='menuitem']").on("click", function() {
                            calEvent.principal = $(this).find("span").html();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })

                        //删除行程
                        $(".remove_btn").click(function() {
                            $('#calendar').fullCalendar('removeEvents', calEvent._id);
                            $(".modal_right").removeClass('active');
                            $(".modal_bg").hide();
                        })
                    }
                    //点击日程
                    else {
                        console.log(calEvent)
                        $(".modal_right2").addClass('active');
                        $(".modal_bg").show();
                        $(".modal_bg").click(function() {
                            $(".modal_right2").removeClass('active');
                            $(".modal_bg").hide();
                        })

                        $(".modal_right2 .journey_title").val(calEvent.title);
                        $(".modal_right2 .plug_date_start").val(calEvent._start._d.getFullYear() + "-" + addZero(calEvent._start._d.getMonth() + 1) + "-" + addZero(calEvent._start._d.getDate()));
                        $(".modal_right2 .plug_date_end").val(calEvent._end._d.getFullYear() + "-" + addZero(calEvent._end._d.getMonth() + 1) + "-" + addZero(calEvent._end._d.getDate()));


                        $(".modal_right2 .journey_title").on("change", function() {
                            calEvent.title = $(this).val();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $(".modal_right2 .plug_date_start").on("change", function() {
                            calEvent.start = $(".modal_right2 .plug_date_start").val();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                        $(".modal_right2 .plug_date_end").on("change", function() {
                            calEvent.end = $(".modal_right2 .plug_date_end").val();
                            $('#calendar').fullCalendar('updateEvent', calEvent);
                        })
                    }

                },
                editable: true,
                disableResizing: false,
                eventLimit: true,
                events: [{
                    title: 'All Day Event',
                    start: '2015-08-01',
                    end: '2015-08-06',
                    color: 'rgba(0,153,204,.5)'
                }, {
                    title: 'Long Event',
                    start: '2015-08-07T12:00:00',
                    end: '2015-08-10T14:00:00',
                    allDay: false,
                    color: 'rgba(224,33,34,.5)',
                    principal: "余方杨"
                }]
            });

        });
    }










});
