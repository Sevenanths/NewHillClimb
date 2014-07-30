.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;
.super Ljava/lang/Object;
.source "AdProviderFs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingersoftAdClickListener"
.end annotation


# instance fields
.field private adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;)V
    .locals 0
    .parameter
    .parameter "adManager"
    .parameter "campaign"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 303
    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    .line 304
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v5, "adclicked/fingersoft"

    invoke-virtual {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getClickLink()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/LinkListener;->clickAdWithLink(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 317
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getClickLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 318
    .local v2, myIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 320
    .end local v2           #myIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, locale:Ljava/lang/String;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPlatformName()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, platform:Ljava/lang/String;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->campaign:Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/providers/Fingersoft/Campaign;->getGuid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->adManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v3, v6}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getAdIncrementUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;->callUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1           #locale:Ljava/lang/String;
    .end local v3           #platform:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    #calls: Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->stopTimer()V
    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->access$0(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;)V

    .line 330
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs$FingersoftAdClickListener;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;->startCountdown(J)V

    .line 331
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
