.class public Lcom/adsdk/sdk/video/SDKVideoView;
.super Landroid/view/SurfaceView;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;,
        Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDisplayMode:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field private mPlayWhenSurfaceReady:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceReady:Z

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimeEventListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector",
            "<",
            "Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeEventRunnable:Ljava/lang/Runnable;

.field private mTimeEventThread:Ljava/lang/Thread;

.field private mTimeEventThreadDone:Landroid/os/ConditionVariable;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "displayMode"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 43
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    .line 66
    new-instance v0, Landroid/os/ConditionVariable;

    .line 67
    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;

    .line 286
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 294
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$2;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 328
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$3;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 342
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$4;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 362
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$5;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 379
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$6;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 386
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$7;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 74
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    .line 76
    iput p3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    .line 77
    iput p4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    .line 78
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->initVideoView()V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return-void
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    return v0
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/video/SDKVideoView;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V

    return-void
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/video/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 256
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setEnabled(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    .line 127
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 128
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 129
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    .line 130
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    .line 131
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    .line 132
    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 134
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusableInTouchMode(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->requestFocus()Z

    .line 138
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 139
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 140
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 569
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 570
    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 569
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 165
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 168
    :cond_0
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    .line 169
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-nez v1, :cond_1

    .line 170
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    .line 171
    const-string v1, "Open Video not starting until surface created"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0, v5}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    .line 176
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 177
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 178
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 179
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 180
    const/4 v1, -0x1

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 181
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 182
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 183
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 184
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    .line 186
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 188
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 189
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 190
    new-instance v1, Lcom/adsdk/sdk/video/SDKVideoView$8;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/SDKVideoView$8;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    .line 225
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 226
    const/4 v1, 0x1

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 227
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 231
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 232
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 235
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 236
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 238
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 239
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3
    .parameter "cleartargetstate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 421
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 422
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 424
    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 427
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 428
    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 429
    if-eqz p1, :cond_1

    .line 430
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 433
    :cond_1
    return-void
.end method

.method private setVideoDisplaySize()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 262
    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 263
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 265
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDKVideoView setVideoDisplaySize View Size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Video size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") surface:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v0, :cond_2

    .line 272
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 273
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 275
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    .line 281
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 284
    return-void

    .line 276
    :cond_3
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 278
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    goto :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 83
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 563
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 528
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 534
    :goto_0
    return v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 531
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0

    .line 533
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 534
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 605
    const-string v0, "Video view detached from Window"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 606
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 607
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 454
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 455
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    .line 456
    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    .line 457
    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    .line 458
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    .line 459
    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 460
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 461
    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v2, :cond_4

    .line 462
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    .line 463
    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    .line 478
    :goto_1
    return v1

    .line 454
    .end local v0           #isKeyCodeSupported:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    .restart local v0       #isKeyCodeSupported:Z
    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    goto :goto_1

    .line 470
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    .line 471
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    .line 478
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 474
    :cond_5
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v1

    .line 90
    .local v1, width:I
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v0

    .line 91
    .local v0, height:I
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 92
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 94
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setMeasuredDimension(II)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKVideoView onMeasure video size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") surface:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Setting size:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 123
    return-void

    .line 95
    :cond_1
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 97
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    .line 449
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 511
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 514
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 515
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->onPause()V

    .line 520
    :cond_0
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 521
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 250
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V

    .line 251
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 579
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 583
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 587
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 575
    return-void
.end method

.method public setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    .line 591
    return-void
.end method

.method public setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V
    .locals 3
    .parameter "time"
    .parameter "onTimeEventListener"

    .prologue
    .line 595
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 596
    .local v0, listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/Vector;

    .end local v0           #listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 598
    .restart local v0       #listeners:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;>;"
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 143
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 144
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    .line 149
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    .line 150
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 489
    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 490
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 495
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v1}, Lcom/adsdk/sdk/video/MediaController;->onStart()V

    .line 498
    :cond_0
    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 499
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-interface {v1}, Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;->onVideoStart()V

    .line 503
    :cond_1
    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 507
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 505
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 159
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 160
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 162
    :cond_1
    return-void
.end method
