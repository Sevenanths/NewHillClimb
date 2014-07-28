.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;
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
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;->this$1:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    #getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    move-result-object v0

    #calls: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createAndAddBufferingView()V
    invoke-static {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$13(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    .line 716
    return-void
.end method
