.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I
    invoke-static {v2}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    invoke-static {v3}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_0
    return-void
.end method
