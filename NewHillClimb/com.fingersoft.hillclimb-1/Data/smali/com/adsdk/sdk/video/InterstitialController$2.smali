.class Lcom/adsdk/sdk/video/InterstitialController$2;
.super Ljava/lang/Object;
.source "InterstitialController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/InterstitialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/InterstitialController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/InterstitialController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/InterstitialController$2;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/adsdk/sdk/video/InterstitialController$2;->this$0:Lcom/adsdk/sdk/video/InterstitialController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/InterstitialController;->reload()V

    .line 673
    return-void
.end method
