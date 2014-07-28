.class public Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "ApplifierImpactVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;
    }
.end annotation


# static fields
.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _bufferingCompledtedMillis:J

.field private _bufferingStartedMillis:J

.field private _bufferingText:Landroid/widget/RelativeLayout;

.field private _bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

.field private _countDownText:Landroid/widget/RelativeLayout;

.field private _listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

.field private _muted:Z

.field private _pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

.field private _sentPositionEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _skipText:Landroid/widget/RelativeLayout;

.field private _skipTextView:Landroid/widget/TextView;

.field private _skipTimeInSeconds:J

.field private _timeLeftInSecondsText:Landroid/widget/TextView;

.field private _videoCompleted:Z

.field private _videoFileName:Ljava/lang/String;

.field private _videoPausedTimer:Ljava/util/Timer;

.field private _videoPlaybackErrors:Z

.field private _videoPlaybackStartedSent:Z

.field private _videoPlayheadPrepared:Z

.field private _videoStartedPlayingMillis:J

.field private _videoView:Landroid/widget/VideoView;

.field private _volumeBeforeMute:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 41
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    .line 43
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 45
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 46
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 47
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 50
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 51
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 52
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    .line 54
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    .line 55
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    .line 56
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 58
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 59
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 60
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    .line 61
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 63
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 73
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 41
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    .line 43
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 45
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 46
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 47
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 50
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 51
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 52
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    .line 54
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    .line 55
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    .line 56
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 58
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 59
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 60
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    .line 61
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 63
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 79
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 41
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    .line 43
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 45
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 46
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 47
    iput-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 50
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 51
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 52
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    .line 54
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    .line 55
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    .line 56
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 58
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 59
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 60
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    .line 61
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 63
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 67
    iput-object p2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    .line 68
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->videoErrorOperations()V

    return-void
.end method

.method static synthetic access$13(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddBufferingView()V

    return-void
.end method

.method static synthetic access$14(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    return v0
.end method

.method static synthetic access$15(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideBufferingView()V

    return-void
.end method

.method static synthetic access$16(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    return v0
.end method

.method static synthetic access$17(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    return-void
.end method

.method static synthetic access$18(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    return-void
.end method

.method static synthetic access$19(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    return-void
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    return-wide v0
.end method

.method static synthetic access$21(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddPausedView()V

    return-void
.end method

.method static synthetic access$22(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    return v0
.end method

.method static synthetic access$23(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    return-void
.end method

.method static synthetic access$24(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$25(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    return v0
.end method

.method static synthetic access$26(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->storeVolume()V

    return-void
.end method

.method static synthetic access$27(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$28(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    return-void
.end method

.method static synthetic access$29(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    return-void
.end method

.method static synthetic access$3(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$30(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->startVideo()V

    return-void
.end method

.method static synthetic access$31(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    return-void
.end method

.method static synthetic access$32(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    return-object v0
.end method

.method static synthetic access$33(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)F
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    return v0
.end method

.method static synthetic access$34(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$35(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V

    return-void
.end method

.method static synthetic access$36(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$6(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideSkipText()V

    return-void
.end method

.method static synthetic access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    return-object v0
.end method

.method private createAndAddBufferingView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 409
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    if-nez v1, :cond_0

    .line 410
    new-instance v1, Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 414
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v0, bufferingLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    invoke-virtual {p0, v1, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    .end local v0           #bufferingLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createAndAddMuteButton()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 364
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v0, muteButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    new-instance v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    .line 369
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {v1, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-boolean v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    sget-object v2, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setState(Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    new-instance v2, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$9;

    invoke-direct {v2, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$9;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {p0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 395
    return-void
.end method

.method private createAndAddPausedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 398
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    if-nez v1, :cond_0

    .line 399
    new-instance v1, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    invoke-virtual {v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 402
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v0, pausedViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    .end local v0           #pausedViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createAndAddSkipText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, -0x2

    .line 435
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 436
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 437
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v0, skipTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 440
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 441
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 442
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$10;

    invoke-direct {v2, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$10;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 453
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You can skip this video in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 457
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 460
    return-void
.end method

.method private createView()V
    .locals 11

    .prologue
    .line 234
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v3

    .line 235
    .local v3, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v3}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->muteVideoSounds()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 236
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 239
    :cond_0
    const-string v9, "Creating custom view"

    invoke-static {v9, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const/high16 v9, -0x100

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBackgroundColor(I)V

    .line 243
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoCompleted:Z

    .line 244
    new-instance v9, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$4;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 254
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    const/16 v10, 0xbb9

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setId(I)V

    .line 255
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .local v8, videoLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v9, v8}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v9, v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 260
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v10, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;

    invoke-direct {v10, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$5;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 267
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v10, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;

    invoke-direct {v10, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$6;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v9, v10}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 282
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 283
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    const/16 v10, 0xc1c

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 284
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v0, bufferingTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    const/4 v9, 0x3

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 288
    const/4 v9, 0x3

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 289
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, bufferingTextView:Landroid/widget/TextView;
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    const-string v9, "Buffering..."

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/16 v9, 0xc1f

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setId(I)V

    .line 296
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 297
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 299
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    const/16 v10, 0xbba

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 301
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v2, countDownParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    const/4 v9, 0x3

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 305
    const/4 v9, 0x3

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 306
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 309
    .local v4, tv:Landroid/widget/TextView;
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    const-string v9, "This video ends in "

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const/16 v9, 0x2711

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setId(I)V

    .line 313
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 314
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const-string v10, "00"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const/16 v10, 0x2712

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 317
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v5, tv2params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x1

    const/16 v10, 0x2711

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 319
    const/4 v9, 0x1

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 320
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 323
    .local v6, tv3:Landroid/widget/TextView;
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    const-string v9, "seconds."

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    .local v7, tv3params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x1

    const/16 v10, 0x2712

    invoke-virtual {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 327
    const/4 v9, 0x4

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 328
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 336
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getSkipDuration()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J

    .line 338
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V

    .line 341
    :cond_1
    new-instance v9, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;

    invoke-direct {v9, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$7;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    new-instance v9, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$8;

    invoke-direct {v9, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$8;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {p0, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 360
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddMuteButton()V

    .line 361
    return-void
.end method

.method private disableSkippingFromSkipText()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 486
    :cond_0
    return-void
.end method

.method private enableSkippingFromSkipText()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 463
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 465
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 466
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const v4, 0x1ffffff

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 467
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 468
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const-string v4, "Skip video"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 472
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v0, skipHitArea:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 474
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 475
    .local v2, textHeight:I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 476
    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 477
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 478
    .local v1, td:Landroid/view/TouchDelegate;
    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 480
    .end local v0           #skipHitArea:Landroid/graphics/Rect;
    .end local v1           #td:Landroid/view/TouchDelegate;
    .end local v2           #textHeight:I
    :cond_0
    return-void
.end method

.method private getSkipDuration()J
    .locals 3

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 428
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->allowVideoSkipInSeconds()J

    move-result-wide v1

    .line 431
    .end local v0           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private hasSkipDuration()Z
    .locals 5

    .prologue
    .line 421
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 422
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->allowVideoSkipInSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideBufferingView()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 498
    :cond_0
    return-void
.end method

.method private hideSkipText()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V

    .line 508
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    :cond_0
    return-void
.end method

.method private hideTimeRemainingLabel()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 491
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 493
    :cond_0
    return-void
.end method

.method private hideVideoPausedView()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/applifier/impact/android/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 503
    :cond_0
    return-void
.end method

.method private purgeVideoPausedTimer()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 228
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 231
    :cond_0
    return-void
.end method

.method private setBufferingTextVisibility(IZZ)V
    .locals 2
    .parameter "visibility"
    .parameter "hasSkip"
    .parameter "canSkip"

    .prologue
    .line 513
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 209
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$3;

    invoke-direct {v1, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$3;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 221
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    new-instance v1, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 223
    :cond_1
    return-void
.end method

.method private storeVolume()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 185
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 186
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 187
    .local v1, curVol:I
    const/4 v2, 0x0

    .line 189
    .local v2, maxVol:I
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 191
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 192
    const/high16 v4, 0x3f80

    int-to-float v5, v2

    div-float v3, v4, v5

    .line 193
    .local v3, parts:F
    int-to-float v4, v1

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Storing volume: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .end local v3           #parts:F
    :cond_0
    return-void
.end method

.method private videoErrorOperations()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 200
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 201
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    invoke-interface {v0}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onVideoPlaybackError()V

    .line 204
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoError(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 205
    return-void
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const-string v0, "clearVideoPlayer"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideSkipText()V

    .line 136
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideTimeRemainingLabel()V

    .line 137
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideBufferingView()V

    .line 138
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    .line 139
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 141
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 142
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 143
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 144
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->removeAllViews()V

    .line 148
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 149
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 151
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 152
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/applifier/impact/android/view/ApplifierImpactBufferingView;

    .line 154
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 155
    iput-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 156
    return-void
.end method

.method public getBufferingDuration()J
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 163
    :cond_0
    iget-wide v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    iget-wide v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, timeUntilBackButton:I
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 170
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 172
    if-gez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    :cond_0
    move v2, v1

    .line 179
    :goto_0
    return v2

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->allowVideoSkipInSeconds()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 176
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 571
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 572
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    .line 573
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    .line 541
    const-wide/16 v2, 0x0

    .line 542
    .local v2, bufferingDuration:J
    const/4 v5, 0x0

    .line 544
    .local v5, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 566
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 546
    :pswitch_0
    const-string v6, "onKeyDown"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v4

    .line 549
    .local v4, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v4}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    .line 550
    .local v0, allowBackButtonSkip:J
    cmp-long v6, v0, v7

    if-eqz v6, :cond_0

    cmp-long v6, v0, v7

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v6

    if-nez v6, :cond_1

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 553
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getBufferingDuration()J

    move-result-wide v2

    .line 554
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 555
    .restart local v5       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "bufferingDuration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v6, "eventValue"

    const-string v7, "back"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v6, v5}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoAbort(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 560
    :cond_1
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    if-eqz v6, :cond_2

    .line 561
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    invoke-interface {v6, p0}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 563
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 117
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;

    invoke-direct {v1, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$2;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 86
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Playing video from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$1;

    invoke-direct {v2, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$1;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-boolean v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 110
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->startVideo()V

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v1, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->videoErrorOperations()V

    goto :goto_0
.end method
