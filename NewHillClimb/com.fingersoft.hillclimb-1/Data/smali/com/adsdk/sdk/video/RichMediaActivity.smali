.class public Lcom/adsdk/sdk/video/RichMediaActivity;
.super Landroid/app/Activity;
.source "RichMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;,
        Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialAutocloseTask;,
        Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;,
        Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;,
        Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
    }
.end annotation


# static fields
.field public static final TYPE_BROWSER:I = 0x0

.field public static final TYPE_INTERSTITIAL:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private mAd:Lcom/adsdk/sdk/video/RichMediaAd;

.field private mCanClose:Z

.field private mCheckProgressTask:Ljava/lang/Runnable;

.field private mCustomVideoView:Landroid/widget/VideoView;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mEnterAnim:I

.field private mExitAnim:I

.field private mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

.field protected mInterstitialAutocloseReset:Z

.field private mInterstitialAutocloseTimer:Ljava/util/Timer;

.field private mInterstitialCanCloseTimer:Ljava/util/Timer;

.field private final mInterstitialClickListener:Landroid/view/View$OnClickListener;

.field private mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

.field private mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

.field private mInterstitialLoadingTimer:Ljava/util/Timer;

.field private mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

.field mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

.field mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

.field mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field mOnVideoSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

.field private final mOverlayClickListener:Landroid/view/View$OnClickListener;

.field private final mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

.field private mPageLoaded:Z

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mResult:Z

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/ImageView;

.field protected mTimeTest:I

.field private mType:I

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;

.field private mVideoHeight:I

.field private mVideoLastPosition:I

.field private mVideoLayout:Landroid/widget/FrameLayout;

.field private mVideoTimeoutTimer:Ljava/util/Timer;

.field private mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

.field private mVideoWidth:I

.field private mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field marginArg:I

.field metrics:Landroid/util/DisplayMetrics;

.field paddingArg:I

.field skipButtonSizeLand:I

.field skipButtonSizePort:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    .line 217
    const/4 v0, 0x5

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->paddingArg:I

    .line 219
    const/16 v0, 0x8

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->marginArg:I

    .line 221
    const/16 v0, 0x32

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    .line 223
    const/16 v0, 0x28

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    .line 265
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 281
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$2;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$3;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 306
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$4;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 320
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$5;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$6;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 355
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$7;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 395
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$8;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    .line 413
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$9;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$9;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    .line 431
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$10;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$10;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    .line 449
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$11;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$11;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 469
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$12;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$12;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 489
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$13;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$13;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    .line 522
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$14;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$14;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    .line 540
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$15;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$15;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialClickListener:Landroid/view/View$OnClickListener;

    .line 555
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$16;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$16;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    .line 579
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$17;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$17;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    .line 594
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$18;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$18;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    .line 635
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$19;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$19;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 210
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    return v0
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 212
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    return v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    return-void
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/ResourceManager;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialController;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    return-object v0
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/InterstitialData;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$22(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$23(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 209
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    return v0
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/RichMediaAd;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    return-object v0
.end method

.method private initInterstitialView()V
    .locals 13

    .prologue
    const/4 v9, -0x1

    const/16 v12, -0x12

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 718
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v6}, Lcom/adsdk/sdk/video/RichMediaAd;->getInterstitial()Lcom/adsdk/sdk/video/InterstitialData;

    move-result-object v6

    iput-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    .line 719
    iput-boolean v10, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseReset:Z

    .line 721
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    invoke-virtual {p0, v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    .line 722
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 723
    .local v1, layout:Landroid/widget/FrameLayout;
    new-instance v6, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v6, p0, v11, v10, v10}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 724
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v6, v10}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    .line 725
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 726
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    .line 727
    new-instance v6, Lcom/adsdk/sdk/video/InterstitialController;

    .line 728
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    invoke-direct {v6, p0, v7}, Lcom/adsdk/sdk/video/InterstitialController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/InterstitialData;)V

    .line 727
    iput-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    .line 729
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowser(Lcom/adsdk/sdk/video/InterstitialController$BrowserControl;)V

    .line 730
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/InterstitialController;->setBrowserView(Landroid/view/View;)V

    .line 731
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    .line 732
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnResetAutocloseListener:Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/InterstitialController;->setOnResetAutocloseListener(Lcom/adsdk/sdk/video/InterstitialController$OnResetAutocloseListener;)V

    .line 733
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    .line 734
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 735
    const/16 v8, 0x11

    .line 734
    invoke-direct {v7, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 733
    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->showNavigationBars:Z

    if-eqz v6, :cond_0

    .line 737
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialController:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v6, v10}, Lcom/adsdk/sdk/video/InterstitialController;->show(I)V

    .line 738
    :cond_0
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-boolean v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButton:Z

    if-eqz v6, :cond_5

    .line 740
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 741
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 742
    const/4 v4, 0x0

    .line 745
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v6, v6

    .line 746
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 744
    invoke-static {v11, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 752
    .local v0, buttonSize:I
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 753
    .local v5, size:I
    int-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 755
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 756
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x35

    .line 755
    invoke-direct {v4, v0, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 758
    .restart local v4       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->orientation:I

    if-ne v6, v11, :cond_2

    .line 760
    const/high16 v6, 0x4100

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 761
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 759
    invoke-static {v11, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 762
    .local v3, margin:I
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 763
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 772
    :goto_0
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 773
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 774
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 776
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/InterstitialData;->skipButtonImage:Ljava/lang/String;

    .line 775
    invoke-virtual {v6, p0, v7, v12}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 782
    :goto_1
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 783
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->showSkipButtonAfter:I

    if-lez v6, :cond_4

    .line 785
    iput-boolean v10, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 786
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    if-nez v6, :cond_1

    .line 788
    new-instance v2, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;

    invoke-direct {v2, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 789
    .local v2, loadingTimeoutTask:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    .line 790
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    .line 791
    const-wide/16 v7, 0x2710

    .line 790
    invoke-virtual {v6, v2, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 798
    .end local v2           #loadingTimeoutTask:Lcom/adsdk/sdk/video/RichMediaActivity$InterstitialLoadingTimeoutTask;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    .end local v0           #buttonSize:I
    .end local v3           #margin:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #size:I
    :goto_3
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 802
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 804
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v6, v6, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    packed-switch v6, :pswitch_data_0

    .line 814
    :goto_4
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v6}, Lcom/adsdk/sdk/video/WebFrame;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 815
    return-void

    .line 766
    .restart local v0       #buttonSize:I
    .restart local v4       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5       #size:I
    :cond_2
    const/high16 v6, 0x4120

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 767
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 765
    invoke-static {v11, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 768
    .restart local v3       #margin:I
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 769
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 779
    :cond_3
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 780
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 781
    invoke-virtual {v7, p0, v12}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 780
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 795
    :cond_4
    iput-boolean v11, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 796
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 800
    .end local v0           #buttonSize:I
    .end local v3           #margin:I
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #size:I
    :cond_5
    iput-boolean v10, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto :goto_3

    .line 806
    :pswitch_0
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 807
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto :goto_4

    .line 810
    :pswitch_1
    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 811
    iget-object v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initRootLayout()V
    .locals 2

    .prologue
    .line 818
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    .line 819
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 820
    return-void
.end method

.method private initVideoView()V
    .locals 18

    .prologue
    .line 824
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v12}, Lcom/adsdk/sdk/video/RichMediaAd;->getVideo()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    .line 826
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-nez v12, :cond_c

    .line 828
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-ge v12, v13, :cond_0

    .line 829
    move-object/from16 v0, p0

    iget v11, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 830
    .local v11, size:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 831
    move-object/from16 v0, p0

    iput v11, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 838
    .end local v11           #size:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->width:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->height:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 840
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    if-gtz v12, :cond_d

    .line 841
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 842
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 856
    :cond_1
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Video size ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 857
    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 856
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 859
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    .line 860
    new-instance v12, Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 861
    move-object/from16 v0, p0

    iget v14, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v15, v15, Lcom/adsdk/sdk/video/VideoData;->display:I

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/adsdk/sdk/video/SDKVideoView;-><init>(Landroid/content/Context;III)V

    .line 860
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 863
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    .line 864
    const/16 v16, -0x1

    const/16 v17, 0x11

    .line 863
    invoke-direct/range {v14 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 862
    invoke-virtual {v12, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    if-eqz v12, :cond_4

    .line 866
    new-instance v12, Lcom/adsdk/sdk/video/WebFrame;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    .line 867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->setEnableZoom(Z)V

    .line 868
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    if-lez v12, :cond_2

    .line 873
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->setVisibility(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v13, v13, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    .line 876
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 874
    invoke-virtual {v12, v13, v14}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    .line 878
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    if-nez v12, :cond_f

    .line 879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v13, v13, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    .line 882
    :goto_2
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 883
    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 882
    invoke-direct {v8, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 884
    .local v8, overlayParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v12, :cond_10

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v12, :cond_10

    .line 886
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v12, v12

    const-wide v14, 0x3fbe666666666666L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 887
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v12, v12

    const-wide v14, 0x3fbe666666666666L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 888
    const/16 v12, 0x11

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 904
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v12, v13, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    .end local v8           #overlayParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    new-instance v12, Lcom/adsdk/sdk/video/MediaController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/adsdk/sdk/video/MediaController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 907
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setMediaController(Lcom/adsdk/sdk/video/MediaController;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-eqz v12, :cond_5

    .line 909
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v12}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    .line 910
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 911
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/MediaController;->setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V

    .line 913
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->unpauseEvents:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 915
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/MediaController;->setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V

    .line 916
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 917
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 918
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/MediaController;->setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V

    .line 919
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 920
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    .line 921
    const/16 v16, -0x1

    const/16 v17, 0x7

    .line 920
    invoke-direct/range {v14 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 919
    invoke-virtual {v12, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    if-eqz v12, :cond_15

    .line 924
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 926
    const/4 v9, 0x0

    .line 938
    .local v9, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v13, v13

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 937
    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v1, v12

    .line 942
    .local v1, buttonSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 943
    .restart local v11       #size:I
    int-to-double v12, v11

    const-wide v14, 0x3fb70a3d70a3d70aL

    mul-double/2addr v12, v14

    double-to-int v1, v12

    .line 951
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 952
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v12, 0x35

    .line 951
    invoke-direct {v9, v1, v1, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 953
    .restart local v9       #params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 955
    const/4 v12, 0x1

    const/high16 v13, 0x4100

    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 956
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 954
    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v7, v12

    .line 957
    .local v7, margin:I
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 958
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 967
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    if-eqz v12, :cond_13

    .line 968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_13

    .line 969
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 970
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v13, v13, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    .line 971
    const/16 v14, -0x12

    .line 969
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13, v14}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    .line 976
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v12, :cond_14

    .line 978
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 984
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    .end local v1           #buttonSize:I
    .end local v7           #margin:I
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #size:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v12, v12, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v12, :cond_9

    .line 988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 989
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v13, v13, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    .line 990
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 988
    invoke-virtual {v12, v13, v14}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    .line 991
    :cond_9
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 992
    const/4 v12, -0x2

    const/4 v13, -0x2

    .line 993
    const/16 v14, 0x11

    .line 991
    invoke-direct {v9, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 994
    .restart local v9       #params:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    .line 995
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 996
    .local v5, loadingText:Landroid/widget/TextView;
    sget-object v12, Lcom/adsdk/sdk/Const;->LOADING:Ljava/lang/CharSequence;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    .line 999
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    .line 1000
    const/16 v16, -0x1

    const/16 v17, 0x11

    .line 999
    invoke-direct/range {v14 .. v17}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 998
    invoke-virtual {v12, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 1005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V

    .line 1010
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 1011
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v12, v12, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    .line 1012
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1013
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_16

    .line 1019
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v10, v12, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    .line 1021
    .local v10, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v12, v10}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1022
    return-void

    .line 833
    .end local v5           #loadingText:Landroid/widget/TextView;
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v10           #path:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-ge v12, v13, :cond_0

    .line 834
    move-object/from16 v0, p0

    iget v11, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 835
    .restart local v11       #size:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 836
    move-object/from16 v0, p0

    iput v11, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    goto/16 :goto_0

    .line 844
    .end local v11           #size:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 846
    .local v6, m:Landroid/util/DisplayMetrics;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    int-to-float v13, v13

    .line 845
    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 848
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    int-to-float v13, v13

    .line 847
    invoke-static {v12, v13, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    .line 850
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-le v12, v13, :cond_e

    .line 851
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    .line 852
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-le v12, v13, :cond_1

    .line 853
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    goto/16 :goto_1

    .line 881
    .end local v6           #m:Landroid/util/DisplayMetrics;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v13, v13, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 889
    .restart local v8       #overlayParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v12, :cond_11

    .line 890
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-nez v12, :cond_11

    .line 891
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v12, v12

    const-wide v14, 0x3fbe666666666666L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 892
    const/16 v12, 0x30

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    .line 897
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v12, :cond_3

    .line 898
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v12, v12, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-nez v12, :cond_3

    .line 901
    move-object/from16 v0, p0

    iget v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v12, v12

    const-wide v14, 0x3fbe666666666666L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 902
    const/16 v12, 0x50

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    .line 961
    .end local v8           #overlayParams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1       #buttonSize:I
    .restart local v9       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #size:I
    :cond_12
    const/4 v12, 0x1

    const/high16 v13, 0x4120

    invoke-virtual/range {p0 .. p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 962
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 960
    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v7, v12

    .line 963
    .restart local v7       #margin:I
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 964
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_4

    .line 973
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 975
    const/16 v14, -0x12

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 974
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 981
    :cond_14
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 986
    .end local v1           #buttonSize:I
    .end local v7           #margin:I
    .end local v9           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #size:I
    :cond_15
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto/16 :goto_7

    .line 1014
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v5       #loadingText:Landroid/widget/TextView;
    .restart local v9       #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1015
    .local v3, key:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    .line 1016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    .line 1015
    invoke-virtual {v12, v3, v13}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    goto/16 :goto_8
.end method

.method private initWebBrowserView(Z)V
    .locals 2
    .parameter "showExit"

    .prologue
    const/4 v1, 0x1

    .line 1025
    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    .line 1026
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    .line 1027
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnWebBrowserLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    .line 1029
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1030
    return-void
.end method

.method public static setActivityAnimation(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 652
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish Activity type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 655
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 673
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    .line 674
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    .line 673
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V

    .line 675
    return-void

    .line 657
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 660
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0

    .line 664
    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 665
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 666
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/video/RichMediaAd;Z)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDipSize(I)I
    .locals 3
    .parameter "argSize"

    .prologue
    .line 678
    const/4 v0, 0x1

    .line 679
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 678
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 689
    const-string v0, "Closing custom view on back key pressed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 708
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->goBack()V

    goto :goto_0

    .line 695
    :pswitch_1
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/WebFrame;->goBack()V

    goto :goto_0

    .line 701
    :cond_2
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_0

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 703
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 704
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, -0x12

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 250
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 251
    invoke-virtual {v1, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    .line 254
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 255
    invoke-virtual {v1, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch -0x12
        :pswitch_1
    .end packed-switch
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2
    .parameter "clickUrl"

    .prologue
    .line 1033
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 1041
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 1042
    const-class v1, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 1041
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1043
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1046
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1035
    :pswitch_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    :pswitch_2
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v1, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1050
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1052
    const-string v0, "RichMediaActivity onConfigurationChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/16 v6, 0x400

    const/16 v10, 0x200

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1058
    const-string v5, "RichMediaActivity onCreate"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1059
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1060
    iput-boolean v8, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 1061
    iput-boolean v8, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    .line 1062
    invoke-virtual {p0, v8}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 1063
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1064
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1066
    invoke-virtual {p0, v7}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    .line 1067
    invoke-virtual {v3, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1069
    .local v0, display:Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 1071
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1070
    check-cast v4, Landroid/view/WindowManager;

    .line 1072
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1073
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    .line 1074
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    .line 1075
    invoke-virtual {v3, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 1077
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RichMediaActivity Window Size:("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1078
    iget v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1077
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1080
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->setVolumeControlStream(I)V

    .line 1082
    iput v9, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 1083
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1084
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1085
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1086
    const-string v5, "RICH_AD_DATA"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1087
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    .line 1088
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 1090
    const-string v5, "url is null so do not load anything"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 1145
    :goto_0
    return-void

    .line 1094
    :cond_1
    iput v8, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 1098
    :goto_1
    new-instance v5, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v5, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    .line 1100
    new-instance v5, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v5, p0, v6}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    .line 1101
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initRootLayout()V

    .line 1104
    iget v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-nez v5, :cond_3

    .line 1105
    invoke-direct {p0, v7}, Lcom/adsdk/sdk/video/RichMediaActivity;->initWebBrowserView(Z)V

    .line 1106
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v6, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    .line 1108
    invoke-static {v7}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v5

    .line 1107
    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    .line 1110
    invoke-static {v7}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v5

    .line 1109
    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    .line 1143
    :goto_2
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 1144
    const-string v5, "RichMediaActivity onCreate done"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p0, v7}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    goto :goto_1

    .line 1113
    :cond_3
    const-string v5, "RICH_AD_DATA"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/adsdk/sdk/video/RichMediaAd;

    .line 1112
    iput-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    .line 1114
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v5}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v5

    invoke-static {v5}, Lcom/adsdk/sdk/Util;->getEnterAnimation(I)I

    move-result v5

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    .line 1115
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v5}, Lcom/adsdk/sdk/video/RichMediaAd;->getAnimation()I

    move-result v5

    invoke-static {v5}, Lcom/adsdk/sdk/Util;->getExitAnimation(I)I

    move-result v5

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    .line 1117
    iput-boolean v8, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    .line 1118
    const-string v5, "RICH_AD_TYPE"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    .line 1119
    iget v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-ne v5, v9, :cond_4

    .line 1120
    iget-object v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v5}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1130
    :cond_4
    :goto_3
    iget v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 1132
    :pswitch_0
    const-string v5, "Type video"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initVideoView()V

    goto :goto_2

    .line 1123
    :pswitch_1
    iput v7, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    .line 1127
    :pswitch_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    .line 1136
    :pswitch_3
    const-string v5, "Type interstitial"

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initInterstitialView()V

    goto :goto_2

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 1150
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/ResourceManager;->releaseInstance()V

    .line 1151
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->destroy()V

    .line 1153
    :cond_0
    const-string v0, "RichMediaActivity onDestroy"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1156
    const-string v0, "RichMediaActivity onDestroy done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1161
    const-string v1, "onHideCustomView Hidding Custom View"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1165
    iput-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    .line 1166
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 1169
    :try_start_0
    const-string v1, "onHideCustomView stop video"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :goto_0
    iput-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    .line 1178
    :cond_0
    const-string v1, "onHideCustomView calling callback"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1179
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1180
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1181
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 1182
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Couldn\'t stop custom video view"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1186
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->goBack()V

    .line 1188
    const/4 v0, 0x1

    .line 1190
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1196
    const-string v0, "RichMediaActivity onPause"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1198
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 1224
    :cond_0
    :goto_0
    const-string v0, "RichMediaActivity onPause done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1225
    return-void

    .line 1200
    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    .line 1201
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->stopPlayback()V

    .line 1202
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1203
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1205
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    goto :goto_0

    .line 1209
    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1211
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialLoadingTimer:Ljava/util/Timer;

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1215
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialAutocloseTimer:Ljava/util/Timer;

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1219
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialCanCloseTimer:Ljava/util/Timer;

    goto :goto_0

    .line 1198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1230
    const-string v1, "RichMediaActivity onResume"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1231
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1232
    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 1264
    :cond_0
    :goto_0
    const-string v1, "RichMediaActivity onResume done"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1234
    :pswitch_0
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1235
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    .line 1236
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    .line 1237
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 1238
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    .line 1240
    .local v0, autocloseTask:Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    .line 1241
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    .line 1242
    const-wide/32 v2, 0x124f80

    .line 1241
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1247
    .end local v0           #autocloseTask:Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
    :pswitch_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget v1, v1, Lcom/adsdk/sdk/video/InterstitialData;->interstitialType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1254
    :pswitch_2
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    if-nez v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 1256
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->interstitialUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :pswitch_3
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z

    if-nez v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialView:Lcom/adsdk/sdk/video/WebFrame;

    .line 1251
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mInterstitialData:Lcom/adsdk/sdk/video/InterstitialData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/InterstitialData;->interstitialMarkup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto :goto_0

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1270
    const-string v0, " onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1271
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1273
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    .line 1274
    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1275
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1277
    const-string v0, " onShowCustomView Starting Video View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    .line 1279
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 1278
    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    .line 1280
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    .line 1281
    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$20;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$20;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1290
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    .line 1296
    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RichMediaActivity play video:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1301
    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1303
    :pswitch_0
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    goto :goto_0

    .line 1307
    :pswitch_1
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v2}, Lcom/adsdk/sdk/video/RichMediaAd;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1309
    const-string v2, "RichMediaActivity launch video"

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 1310
    new-instance v1, Landroid/content/Intent;

    .line 1311
    const-class v2, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 1310
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1312
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "RICH_AD_DATA"

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/video/RichMediaAd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1313
    const-string v2, "RICH_AD_TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1316
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1318
    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mEnterAnim:I

    iget v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mExitAnim:I

    .line 1317
    invoke-static {p0, v2, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->setActivityAnimation(Landroid/app/Activity;II)V

    .line 1319
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    .line 1320
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ADSDK"

    .line 1323
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot start Rich Ad activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1322
    invoke-static {v2, v3, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public replayVideo()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    .line 1333
    :cond_0
    return-void
.end method
