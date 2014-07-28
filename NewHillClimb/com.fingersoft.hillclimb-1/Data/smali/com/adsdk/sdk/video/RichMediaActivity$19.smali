.class Lcom/adsdk/sdk/video/RichMediaActivity$19;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$19;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoaded()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$19;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    #setter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mPageLoaded:Z
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$24(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 644
    return-void
.end method
