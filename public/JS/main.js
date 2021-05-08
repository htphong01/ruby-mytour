

$('.article-your-sub-comments-block').hide();
$('.user-comment-reply').on('click', function(event) {
    event.stopPropagation();
    event.stopImmediatePropagation();
    commentId = $(this).attr('data-id');
    $(`.article-your-sub-comments-block.${commentId}`).toggle();
    $(`.article-your-sub-comments-block`)
        .not(`.article-your-sub-comments-block.${commentId}`)
        .hide();
})

$('.user-comment-action-more').hide();

$('.user-comment-more-icon').on('click', function() {
    commentId = $(this).data('id');
    $(`.user-comment-action-more.${commentId}`).toggle();
    $(`.user-comment-action-more`)
        .not(`.user-comment-action-more.${commentId}`)
        .hide();
});

$('.user-comment-delete').on('click', function() {
    commentId = $(this).data('id');
    url = $(this).data('url');
    if(confirm('Bạn có thực sự muốn xóa ?')) {
        var data = {
            "_token": $('#token').val()
        };
        $.ajax({
            url: url,
            type: 'delete',
            data: data,
            success: function( _response ){
                $(`.user-comments.${commentId}`).remove();
            },
            error: function( _response ){
                console.log(JSON.stringify(_response));
            }
        });
    }
});

$('.user-comment-report').on('click', function() {
    commentId = $(this).data('id');
    url = `${path}user/report-comment/` + commentId;
    if(confirm('Bạn có thực sự muốn báo cáo bình luận này ?')) {
        var data = {
            "_token": $('#token').val()
        };
        $.ajax({
            url: url,
            type: 'get',
            data: data,
            success: function( _response ){
                $(`.user-comment-action-more`).hide();
                $('#article-modal-btn').click();
            },
            error: function( _response ){
                console.log(JSON.stringify(_response));
            }
        });
    }
});

$('.user-comment-liked').on('click', function() {
    commentId = $(this).data('id');
    url = `http://127.0.0.1:3001/like/` + commentId;
    console.log(commentId);
    var likeElement= $(`.user-comment-liked.${commentId} > i`);
    var data = {
        "_token": $('#authenticity_token').val()
    };
    console.log(data._token);
    $.ajax({
            url: url,
            type: 'get',
            data: data,
            success: function( _response ){
                var likes = $(`.user-comment-liked.${commentId} > span`).html();
                if(likeElement.hasClass('fas')) {
                    likes = parseInt(likes) - 1;
                    $(`.user-comment-liked.${commentId} > span`).html(likes);
                } else {
                    likes = parseInt(likes) + 1;
                    $(`.user-comment-liked.${commentId} > span`).html(likes);
                }
                likeElement.toggleClass('fas');
            },
            error: function( _response ){
                console.log(JSON.stringify(_response));
            }
        });
})
