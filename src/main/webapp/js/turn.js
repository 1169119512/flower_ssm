$("#swiperController>.preview-list-item").hover(function () {
                        var $this = $(this);
                        var index = $this.index();
                        $this.addClass("active").siblings().removeClass("active");
                        swiperProduct.swipeTo(index);
}).click(function () {
                        if (player) {
                            player.pause();
                            $('.pro-video-box').hide();
                        }
                    });
                });
            } else {
                // 缩略图切换
                $("#swiperController>.preview-list-item").hover(function () {
                    var $this = $(this);
                    var index = $this.index();
                    $this.addClass("active").siblings().removeClass("active");
                    swiperProduct.swipeTo(index);
                }).click(function () {
                });
}