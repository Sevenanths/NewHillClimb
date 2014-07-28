.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$10;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;


# direct methods
.method constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$10;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 447
    const-string v0, "Touching the skiptext"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$10;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onVideoSkip()V

    .line 449
    return-void
.end method
