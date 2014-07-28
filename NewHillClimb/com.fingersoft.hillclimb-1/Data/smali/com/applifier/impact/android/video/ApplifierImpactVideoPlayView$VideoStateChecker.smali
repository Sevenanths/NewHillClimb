.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;
.super Ljava/util/TimerTask;
.source "ApplifierImpactVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateChecker"
.end annotation


# instance fields
.field private _curPos:Ljava/lang/Float;

.field private _duration:I

.field private _oldPos:Ljava/lang/Float;

.field private _playHeadHasMoved:Z

.field private _skipTimeLeft:Ljava/lang/Float;

.field private _videoHasStalled:Z

.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;


# direct methods
.method private constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 577
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 578
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    .line 579
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 580
    const v0, 0x3c23d70a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 581
    const/4 v0, 0x1

    iput v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    .line 582
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 583
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)I
    .locals 1
    .parameter

    .prologue
    .line 581
    iget v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    return v0
.end method

.method static synthetic access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Z
    .locals 1
    .parameter

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 587
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v8

    if-nez v8, :cond_1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->cancel()Z

    .line 590
    :cond_1
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 591
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-nez v8, :cond_2

    .line 592
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->pauseVideo()V

    .line 595
    :cond_2
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    iput-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 598
    :try_start_0
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 609
    .local v5, position:Ljava/lang/Float;
    const/4 v1, 0x1

    .line 610
    .local v1, duration:I
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 613
    .local v2, durationSuccess:Ljava/lang/Boolean;
    :try_start_1
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/VideoView;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 620
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 621
    iput v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    .line 623
    :cond_3
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 625
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    .line 626
    iput-boolean v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 627
    iput-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 628
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z
    invoke-static {v10}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v10

    iget-object v11, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_4

    move v6, v7

    :cond_4
    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
    invoke-static {v8, v9, v10, v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$3(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V

    .line 634
    :goto_2
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;

    invoke-direct {v8, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 643
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v8

    cmp-long v6, v8, v13

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v12

    if-lez v6, :cond_10

    iget v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_10

    .line 644
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    long-to-float v6, v8

    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 646
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v12

    if-gez v6, :cond_5

    .line 647
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 649
    :cond_5
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v12

    if-nez v6, :cond_f

    .line 650
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$2;

    invoke-direct {v8, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$2;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 678
    :cond_6
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fd0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 679
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 680
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0

    cmpl-double v6, v8, v10

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 683
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 684
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe8

    cmpl-double v6, v8, v10

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 687
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v8}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 688
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_9
    const/4 v0, 0x0

    .line 693
    .local v0, bufferPercentage:I
    :try_start_2
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getBufferPercentage()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 699
    :goto_4
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v6

    cmp-long v6, v6, v13

    if-lez v6, :cond_a

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 701
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->cancel()Z

    .line 702
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    :cond_a
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    if-eqz v6, :cond_b

    const/16 v6, 0xf

    if-ge v0, v6, :cond_b

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_b

    .line 712
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 720
    :cond_b
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$14(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_c

    .line 721
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :cond_c
    return-void

    .line 600
    .end local v0           #bufferPercentage:I
    .end local v1           #duration:I
    .end local v2           #durationSuccess:Ljava/lang/Boolean;
    .end local v5           #position:Ljava/lang/Float;
    :catch_0
    move-exception v3

    .line 601
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Could not get videoView currentPosition"

    invoke-static {v8, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v12

    if-lez v8, :cond_d

    .line 603
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    iput-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_0

    .line 605
    :cond_d
    const v8, 0x3c23d70a

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_0

    .line 615
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #duration:I
    .restart local v2       #durationSuccess:Ljava/lang/Boolean;
    .restart local v5       #position:Ljava/lang/Float;
    :catch_1
    move-exception v3

    .line 616
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "Could not get videoView duration"

    invoke-static {v8, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    .line 630
    .end local v3           #e:Ljava/lang/Exception;
    :cond_e
    iput-boolean v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 631
    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
    invoke-static {v8, v6, v7, v7}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$3(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V

    goto/16 :goto_2

    .line 658
    :cond_f
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;

    invoke-direct {v8, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 669
    :cond_10
    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gtz v6, :cond_6

    .line 670
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$4;

    invoke-direct {v8, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$4;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 695
    .restart local v0       #bufferPercentage:I
    :catch_2
    move-exception v3

    .line 696
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "Could not get videoView buffering percentage"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method
