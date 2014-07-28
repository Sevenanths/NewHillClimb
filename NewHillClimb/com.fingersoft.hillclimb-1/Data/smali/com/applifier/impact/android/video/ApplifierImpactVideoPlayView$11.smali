.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

.field private final synthetic val$canSkip:Z

.field private final synthetic val$hasSkip:Z

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    iput p2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$visibility:I

    iput-boolean p3, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$hasSkip:Z

    iput-boolean p4, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$canSkip:Z

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$34(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$34(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    :cond_0
    iget v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$visibility:I

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$7(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$35(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$5(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 535
    :goto_0
    return-void

    .line 525
    :cond_2
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$hasSkip:Z

    if-eqz v0, :cond_4

    .line 526
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->val$canSkip:Z

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$5(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$36(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$11;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hideSkipText()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$8(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0
.end method
