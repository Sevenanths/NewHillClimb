.class public Lcom/adsdk/sdk/video/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/MediaController$OnPauseListener;,
        Lcom/adsdk/sdk/video/MediaController$OnReplayListener;,
        Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;,
        Lcom/adsdk/sdk/video/MediaController$ResourceHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x1388

.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private buttonWidthPercent:D

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mFixed:Z

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

.field private mLeftTime:Landroid/widget/TextView;

.field private mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field private mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field private mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field private mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mReplayListener:Landroid/view/View$OnClickListener;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mShowing:Z

.field private mTopBar:Landroid/widget/LinearLayout;

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V
    .locals 5
    .parameter "context"
    .parameter "videoData"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const-wide v2, 0x3fb70a3d70a3d70aL

    iput-wide v2, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    .line 412
    new-instance v2, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    .line 523
    new-instance v2, Lcom/adsdk/sdk/video/MediaController$1;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/MediaController$1;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 625
    new-instance v2, Lcom/adsdk/sdk/video/MediaController$2;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/MediaController$2;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayListener:Landroid/view/View$OnClickListener;

    .line 61
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 62
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Landroid/view/WindowManager;

    .line 65
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 70
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    .line 71
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    .line 73
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Video info cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 77
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 78
    new-instance v2, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-direct {v2, v3, v4}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 79
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->buildNavigationBarView(Landroid/util/DisplayMetrics;)V

    .line 80
    const-string v2, "MediaController created"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/MediaController;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/MediaController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 579
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    .line 588
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 584
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;->onVideoUnpause()V

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 415
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 417
    :sswitch_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    goto :goto_0

    .line 420
    :sswitch_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    goto :goto_0

    .line 423
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_1

    .line 461
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->requestLayout()V

    goto :goto_0

    .line 425
    :sswitch_3
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 427
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 428
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 435
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_4
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 437
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 438
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 445
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :sswitch_5
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_1

    .line 450
    :sswitch_6
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_1

    .line 455
    :sswitch_7
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updateReplay()V

    goto :goto_1

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 423
    :sswitch_data_1
    .sparse-switch
        -0xd -> :sswitch_7
        -0xc -> :sswitch_6
        -0xb -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V
    .locals 13
    .parameter "padding"
    .parameter "metrics"

    .prologue
    const/4 v12, -0x2

    const/16 v8, -0xc

    const/16 v9, -0xd

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 189
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 193
    .local v0, barHeight:I
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-nez v5, :cond_2

    .line 194
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-nez v5, :cond_d

    .line 284
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    :goto_0
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-nez v5, :cond_1

    .line 310
    invoke-virtual {p0, v10}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 312
    :cond_1
    return-void

    .line 197
    :cond_2
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 207
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 208
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    .line 209
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    .line 208
    invoke-virtual {v5, v6, v7, v12}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 218
    :goto_1
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v5, :cond_4

    .line 219
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 220
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 221
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    :goto_2
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 231
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 232
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    .line 233
    const/16 v8, -0xb

    .line 232
    invoke-virtual {v5, v6, v7, v8}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    :cond_3
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showPauseButton:Z

    if-eqz v5, :cond_9

    .line 237
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v5, v11}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 242
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v5, :cond_5

    .line 243
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 244
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 247
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    .line 249
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    .line 248
    invoke-virtual {v5, v6, v7, v9}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    :goto_4
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showReplayButton:Z

    if-eqz v5, :cond_b

    .line 258
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v5, v11}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    .line 264
    :cond_5
    :goto_5
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 265
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v5, v5, Lcom/adsdk/sdk/video/VideoData;->showTimer:Z

    if-eqz v5, :cond_c

    .line 266
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :cond_6
    :goto_6
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adsdk/sdk/video/NavIconData;

    .line 274
    .local v3, iconData:Lcom/adsdk/sdk/video/NavIconData;
    new-instance v2, Lcom/adsdk/sdk/video/NavIcon;

    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcom/adsdk/sdk/video/NavIcon;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V

    .line 275
    .local v2, icon:Lcom/adsdk/sdk/video/NavIcon;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 276
    int-to-double v5, v0

    iget-wide v7, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 277
    int-to-double v6, v0

    iget-wide v8, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 275
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 213
    .end local v1           #i:I
    .end local v2           #icon:Lcom/adsdk/sdk/video/NavIcon;
    .end local v3           #iconData:Lcom/adsdk/sdk/video/NavIconData;
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    .line 214
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 215
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v12}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 213
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 226
    :cond_8
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 227
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 228
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v8}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 227
    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 239
    :cond_9
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v5, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_3

    .line 252
    :cond_a
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 253
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 254
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v9}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 253
    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 260
    :cond_b
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v5, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_5

    .line 268
    :cond_c
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 287
    :cond_d
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 297
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v5, v5, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    .line 298
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    .line 299
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    .line 300
    const/4 v8, -0x1

    .line 298
    invoke-virtual {v5, v6, v7, v8}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 303
    :cond_e
    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    .line 304
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 305
    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 303
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private refreshProgress()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 610
    iget-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    .line 612
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->setProgress()I

    move-result v1

    .line 613
    .local v1, pos:I
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v2}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    .line 615
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v2, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 616
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    rem-int/lit16 v3, v1, 0x3e8

    rsub-int v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 619
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #pos:I
    :cond_0
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 485
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v3, :cond_1

    .line 486
    const/4 v1, 0x0

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    .line 489
    .local v1, position:I
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 491
    .local v0, duration:I
    sub-int v2, v0, v1

    .line 492
    .local v2, timeLeft:I
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/adsdk/sdk/video/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 467
    div-int/lit16 v3, p1, 0x3e8

    .line 469
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 470
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 471
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 473
    .local v0, hours:I
    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 474
    if-lez v0, :cond_0

    .line 475
    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    :goto_0
    return-object v4

    .line 477
    :cond_0
    if-lez v1, :cond_1

    .line 478
    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "0:%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 5

    .prologue
    const/16 v4, -0xb

    const/16 v3, -0xc

    .line 546
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-nez v1, :cond_0

    .line 572
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v1, v3}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 552
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 553
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 555
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 556
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 561
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v1, v4}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 562
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 563
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 564
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 566
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 567
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 568
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateReplay()V
    .locals 4

    .prologue
    const/16 v3, -0xd

    .line 531
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-nez v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v1, v3}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 536
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 539
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 540
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 541
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected buildNavigationBarView(Landroid/util/DisplayMetrics;)V
    .locals 11
    .parameter "metrics"

    .prologue
    .line 98
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .local v0, barHeight:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    const/4 v7, -0x1

    .line 104
    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {p0, v6}, Lcom/adsdk/sdk/video/MediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    .line 106
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 108
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 109
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    const/4 v6, -0x1

    .line 111
    int-to-double v7, v0

    const-wide v9, 0x3fbe76c8b4395810L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 109
    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v4, paramsFrame:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x37

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    const/4 v6, 0x1

    const/high16 v7, 0x40a0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 116
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 114
    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v2, v6

    .line 119
    .local v2, padding:I
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v4}, Lcom/adsdk/sdk/video/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    .line 122
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .end local v4           #paramsFrame:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x1

    .line 126
    int-to-double v7, v0

    const-wide v9, 0x3fbe76c8b4395810L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 124
    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    .restart local v4       #paramsFrame:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x50

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 129
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 132
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v4}, Lcom/adsdk/sdk/video/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, buttonPanel:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    const/4 v6, -0x2

    .line 137
    const/4 v7, -0x1

    .line 135
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x3

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    const v6, -0xff0100

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 143
    new-instance v6, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 144
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    int-to-double v6, v0

    iget-wide v8, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 146
    int-to-double v7, v0

    iget-wide v9, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 144
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    .line 149
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v6, v2, v2, v2, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 150
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v6, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    .line 153
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    int-to-double v6, v0

    iget-wide v8, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 155
    int-to-double v7, v0

    iget-wide v9, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    .line 153
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 157
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v6, v2, v2, v2, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    .line 158
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    .line 159
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v6, Lcom/adsdk/sdk/video/AutoResizeTextView;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    .line 162
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    .line 164
    const/4 v7, -0x2

    .line 162
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 166
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/high16 v7, 0x41b8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 174
    .local v5, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    .line 176
    const/4 v7, 0x0

    .line 174
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f80

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    const/16 v6, 0x10

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v6, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-direct {p0, v2, p1}, Lcom/adsdk/sdk/video/MediaController;->initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V

    .line 183
    return-void
.end method

.method public canToggle()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->allowTapNavigationBars:Z

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v0, "HIDE"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 358
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    .line 359
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "Hide can toggle"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "Hide change visibility"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    .line 364
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 365
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 368
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 500
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 501
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    .line 502
    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    .line 503
    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    .line 504
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 505
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    .line 506
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    .line 507
    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V

    .line 509
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    .line 510
    :cond_1
    const/16 v0, 0x56

    if-ne p1, v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 513
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    .line 520
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    .line 623
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 607
    return-void
.end method

.method public replay()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 386
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 389
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnReplayListener;->onVideoReplay()V

    .line 392
    :cond_1
    return-void
.end method

.method public resizeTopBar(I)V
    .locals 5
    .parameter "bottom"

    .prologue
    .line 371
    if-gtz p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v2, 0x1

    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 375
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 373
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 376
    .local v0, padding:I
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 378
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    add-int v2, p1, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 85
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    .line 86
    return-void
.end method

.method public setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    .line 634
    return-void
.end method

.method public setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    .line 642
    return-void
.end method

.method public setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    .line 638
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 319
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    .line 320
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    const/4 v3, 0x1

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 333
    if-nez p1, :cond_0

    .line 334
    iput-boolean v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    .line 336
    :cond_0
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-nez v1, :cond_1

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 338
    iput-boolean v3, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 339
    const-string v1, "Change Visibility"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 342
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    .line 343
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    if-nez v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->show()V

    goto :goto_0
.end method
