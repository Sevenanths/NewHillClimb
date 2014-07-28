.class Lcom/adsdk/sdk/AdManager$7;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/AdManager;->notifyAdClose(Lcom/adsdk/sdk/video/RichMediaAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;

.field private final synthetic val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

.field private final synthetic val$ok:Z


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/video/RichMediaAd;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$7;->this$0:Lcom/adsdk/sdk/AdManager;

    iput-object p2, p0, Lcom/adsdk/sdk/AdManager$7;->val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

    iput-boolean p3, p0, Lcom/adsdk/sdk/AdManager$7;->val$ok:Z

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$7;->this$0:Lcom/adsdk/sdk/AdManager;

    #getter for: Lcom/adsdk/sdk/AdManager;->mListener:Lcom/adsdk/sdk/AdListener;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$4(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdManager$7;->val$ad:Lcom/adsdk/sdk/video/RichMediaAd;

    iget-boolean v2, p0, Lcom/adsdk/sdk/AdManager$7;->val$ok:Z

    invoke-interface {v0, v1, v2}, Lcom/adsdk/sdk/AdListener;->adClosed(Lcom/adsdk/sdk/Ad;Z)V

    .line 429
    return-void
.end method
