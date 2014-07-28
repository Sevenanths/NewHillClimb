.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$8;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->createView()V
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
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$8;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 353
    if-nez p2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$8;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->pauseVideo()V

    .line 356
    :cond_0
    return-void
.end method
