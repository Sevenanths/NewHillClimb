.class Lcom/adsdk/sdk/mraid/MraidBrowserController;
.super Lcom/adsdk/sdk/mraid/MraidAbstractController;
.source "MraidBrowserController.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidBrowserController"


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidAbstractController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected open(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 20
    const-string v3, "MraidBrowserController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Opening in-app browser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v2

    .line 23
    .local v2, view:Lcom/adsdk/sdk/mraid/MraidView;
    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;->onOpen(Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->getView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, context:Landroid/content/Context;
    const-string v3, ".mp4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    :goto_0
    return-void

    .line 34
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .restart local v1       #i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
