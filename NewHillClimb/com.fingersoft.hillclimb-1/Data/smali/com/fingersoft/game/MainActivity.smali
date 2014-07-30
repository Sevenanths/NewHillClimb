.class public Lcom/fingersoft/game/MainActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fingersoft/fsadsdk/advertising/LinkListener;
.implements Lcom/bda/controller/ControllerListener;


# static fields
.field static ADMOB_PUBID:Ljava/lang/String;

.field static DEFAULT_AD_PRIORITY:Ljava/lang/String;

.field static FLURRY_ANALYTICS_SITE_ID:Ljava/lang/String;

.field static GOOGLE_ANALYTICS_SITEID:Ljava/lang/String;

.field static JUMPTAP_ADSPOT_HIGH_PRIORITY:Ljava/lang/String;

.field static JUMPTAP_ADSPOT_LOW_PRIORITY:Ljava/lang/String;

.field static JUMPTAP_PUBID:Ljava/lang/String;

.field static JUMPTAP_SITEID:Ljava/lang/String;

.field static MOBFOX_PUBID:Ljava/lang/String;

.field private static MV_AMAZON_APPSTORE:I

.field private static MV_GOOGLE_PLAY:I

.field private static mActivityInstance:Lcom/fingersoft/game/MainActivity;

.field private static mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private static mFacebookLikeDone:I

.field private static mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

.field private static mMarketVariation:I

.field private static mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;


# instance fields
.field private mBillingService:Lcom/fingersoft/billing/BillingService;

.field private mBillingServiceConn:Landroid/content/ServiceConnection;

.field private mController:Lcom/bda/controller/Controller;

.field private mCrossPromoDlg:Lcom/fingersoft/game/CrossPromotionDialog;

.field private mCrossPromoTimeoutDisabled:Z

.field private mMoreDlg:Landroid/app/Dialog;

.field mScreenOnEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    const-string v0, "ca-app-pub-4731967106298980/8176391758"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->ADMOB_PUBID:Ljava/lang/String;

    .line 88
    const-string v0, "260134b5f63684cceef289bd62a4bba4"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->MOBFOX_PUBID:Ljava/lang/String;

    .line 89
    const-string v0, "UA-26924051-19"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->GOOGLE_ANALYTICS_SITEID:Ljava/lang/String;

    .line 90
    const-string v0, "DVRBSFY9F6CX9W7NGCTX"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->FLURRY_ANALYTICS_SITE_ID:Ljava/lang/String;

    .line 91
    const-string v0, "madvertise=NOT_SET,mobfox=NOT_SET,admob=NOT_SET"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->DEFAULT_AD_PRIORITY:Ljava/lang/String;

    .line 93
    const-string v0, "pa_fingersoft"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->JUMPTAP_PUBID:Ljava/lang/String;

    .line 94
    const-string v0, "pa_fingersoft_hill_climb_raci_drd_app"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->JUMPTAP_SITEID:Ljava/lang/String;

    .line 95
    const-string v0, "pa_fingersoft_hill_climb_raci_drd_appgame_menu_bot_banner1_g"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->JUMPTAP_ADSPOT_HIGH_PRIORITY:Ljava/lang/String;

    .line 96
    const-string v0, "pa_fingersoft_hill_climb_raci_drd_appgame_menu_bot_banner_ga"

    sput-object v0, Lcom/fingersoft/game/MainActivity;->JUMPTAP_ADSPOT_LOW_PRIORITY:Ljava/lang/String;

    .line 101
    sput-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    .line 102
    sput-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 105
    sput v2, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    .line 107
    sput v2, Lcom/fingersoft/game/MainActivity;->MV_GOOGLE_PLAY:I

    .line 108
    const/4 v0, 0x1

    sput v0, Lcom/fingersoft/game/MainActivity;->MV_AMAZON_APPSTORE:I

    .line 110
    sget v0, Lcom/fingersoft/game/MainActivity;->MV_GOOGLE_PLAY:I

    sput v0, Lcom/fingersoft/game/MainActivity;->mMarketVariation:I

    .line 112
    sput-object v1, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    .line 113
    sput-object v1, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    .line 544
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    .line 99
    iput-object v0, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    .line 103
    iput-object v0, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    .line 115
    iput-object v0, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoDlg:Lcom/fingersoft/game/CrossPromotionDialog;

    .line 116
    iput-boolean v1, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoTimeoutDisabled:Z

    .line 118
    new-instance v0, Lcom/fingersoft/game/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/fingersoft/game/MainActivity$1;-><init>(Lcom/fingersoft/game/MainActivity;)V

    iput-object v0, p0, Lcom/fingersoft/game/MainActivity;->mBillingServiceConn:Landroid/content/ServiceConnection;

    .line 631
    iput-boolean v1, p0, Lcom/fingersoft/game/MainActivity;->mScreenOnEnabled:Z

    .line 85
    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 538
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/fingersoft/game/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 539
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 540
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDeviceLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 575
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 573
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 574
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const-string v1, "en"

    goto :goto_0
.end method

.method public static getIAPAdFree()I
    .locals 2

    .prologue
    .line 604
    :try_start_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    if-eqz v1, :cond_0

    .line 605
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v1}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/game/InAppPurchaseStore;->getAdFree(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 606
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 607
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIAPCoins()I
    .locals 2

    .prologue
    .line 592
    :try_start_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    if-eqz v1, :cond_0

    .line 593
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v1}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/game/InAppPurchaseStore;->getCoins(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 594
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 595
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMarketVariation()I
    .locals 1

    .prologue
    .line 625
    sget v0, Lcom/fingersoft/game/MainActivity;->mMarketVariation:I

    return v0
.end method

.method public static getSettingInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "value"
    .parameter "defaultValue"

    .prologue
    .line 833
    :try_start_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v1}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 839
    :goto_0
    return v0

    .line 837
    :catch_0
    move-exception v1

    move v0, p1

    .line 839
    goto :goto_0
.end method

.method private givePendingReward()V
    .locals 3

    .prologue
    .line 528
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPendingInstallReward()Lcom/fingersoft/fsadsdk/advertising/Reward;

    move-result-object v0

    .line 529
    .local v0, reward:Lcom/fingersoft/fsadsdk/advertising/Reward;
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/Reward;->Amount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 531
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/Reward;->PackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->markRewardGiven(Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public static hasVideoCampaigns()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 684
    :try_start_0
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v3}, Lcom/fingersoft/videoads/ImpactVideoAds;->hasCampaigns()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    .local v1, supersonicConf:I
    :cond_0
    :goto_0
    return v2

    .line 688
    .end local v1           #supersonicConf:I
    :cond_1
    const-string v3, "ads.video.supersonic"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/fingersoft/game/MainActivity;->getSettingInt(Ljava/lang/String;I)I

    move-result v1

    .line 689
    .restart local v1       #supersonicConf:I
    if-lez v1, :cond_2

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v3}, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 696
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isFacebookLikeIAPPerformed()I
    .locals 1

    .prologue
    .line 474
    sget v0, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    return v0
.end method

.method private loadAppSettings()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "fb_like_performed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    .line 326
    return-void
.end method

.method public static moreApps()V
    .locals 4

    .prologue
    .line 480
    :try_start_0
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v3, "more/moreapps"

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 481
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "market://search?q=pub:Fingersoft"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 483
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v2, v1}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native onControllerConnectionEvent(ZI)V
.end method

.method public static native onControllerKeyEvent(IZ)V
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 582
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    .local v1, i:Landroid/content/Intent;
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v2, v1}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private performFacebookLikeIAP()V
    .locals 5

    .prologue
    .line 458
    sget v1, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    if-nez v1, :cond_0

    .line 460
    const/4 v1, 0x1

    sput v1, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    .line 461
    const-string v1, "fb_like_performed"

    sget v2, Lcom/fingersoft/game/MainActivity;->mFacebookLikeDone:I

    invoke-static {p0, v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 463
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v2}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "reward.fblike"

    const/16 v4, 0x1388

    invoke-static {v2, v3, v4}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->addCoins(Landroid/content/Context;I)V

    .line 464
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fingersoft/game/InAppPurchaseStore;->markAsProcessed(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "http://www.facebook.com/Fingersoft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public static playVideoAd(I)V
    .locals 9
    .parameter "playType"

    .prologue
    const/4 v8, 0x1

    .line 701
    :try_start_0
    const-string v6, "ads.video.supersonic"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->getSettingInt(Ljava/lang/String;I)I

    move-result v5

    .line 702
    .local v5, supersonicConf:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v3, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/videoads/VideoAdProvider;>;"
    if-ne v5, v8, :cond_2

    .line 704
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fingersoft/videoads/VideoAdProvider;

    .line 715
    .local v2, provider:Lcom/fingersoft/videoads/VideoAdProvider;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/fingersoft/videoads/VideoAdProvider;->hasCampaigns()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    invoke-interface {v2, p0}, Lcom/fingersoft/videoads/VideoAdProvider;->playVideo(I)Z

    move-result v4

    .line 717
    .local v4, success:Z
    if-eqz v4, :cond_0

    .line 723
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #provider:Lcom/fingersoft/videoads/VideoAdProvider;
    .end local v3           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/videoads/VideoAdProvider;>;"
    .end local v4           #success:Z
    .end local v5           #supersonicConf:I
    :cond_1
    :goto_1
    return-void

    .line 706
    .restart local v3       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/videoads/VideoAdProvider;>;"
    .restart local v5       #supersonicConf:I
    :cond_2
    if-le v5, v8, :cond_3

    .line 707
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    .end local v3           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/videoads/VideoAdProvider;>;"
    .end local v5           #supersonicConf:I
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fingersoft/videoads/VideoAdProvider;>;"
    .restart local v5       #supersonicConf:I
    :cond_3
    :try_start_1
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static resetIAP()V
    .locals 2

    .prologue
    .line 616
    :try_start_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    if-eqz v1, :cond_0

    .line 617
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v1}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/game/InAppPurchaseStore;->inappPurchasesProcessed(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 618
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 619
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static shareApp()V
    .locals 5

    .prologue
    .line 492
    :try_start_0
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v3, "shareapp"

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 493
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    sget v2, Lcom/fingersoft/game/MainActivity;->mMarketVariation:I

    sget v3, Lcom/fingersoft/game/MainActivity;->MV_GOOGLE_PLAY:I

    if-ne v2, v3, :cond_1

    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v4}, Lcom/fingersoft/game/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :cond_0
    :goto_0
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    const-string v3, "Share with"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    :goto_1
    return-void

    .line 496
    :cond_1
    sget v2, Lcom/fingersoft/game/MainActivity;->mMarketVariation:I

    sget v3, Lcom/fingersoft/game/MainActivity;->MV_AMAZON_APPSTORE:I

    if-ne v2, v3, :cond_0

    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-virtual {v4}, Lcom/fingersoft/game/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static trackPageView(Ljava/lang/String;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 814
    :try_start_0
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public canShowAdWithLink(Ljava/lang/String;)Z
    .locals 7
    .parameter "link"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 845
    :try_start_0
    const-string v4, "app://videoad"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 847
    invoke-static {}, Lcom/fingersoft/game/MainActivity;->hasVideoCampaigns()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 847
    goto :goto_0

    .line 849
    :cond_2
    const-string v4, "app://impactvideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 851
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v3}, Lcom/fingersoft/videoads/ImpactVideoAds;->hasCampaigns()Z

    move-result v2

    goto :goto_0

    .line 853
    :cond_3
    const-string v4, "app://supersonicvideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 855
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v3}, Lcom/fingersoft/videoads/SupersonicVideoAds;->hasCampaigns()Z

    move-result v2

    goto :goto_0

    .line 857
    :cond_4
    const-string v4, "iap://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, iapItem:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iap."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".adfree"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iap."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".coins"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/fingersoft/fsadsdk/advertising/ApplicationSettings;->getValueInt(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 866
    goto :goto_0

    .line 869
    .end local v1           #iapItem:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clickAdWithLink(Ljava/lang/String;)Z
    .locals 4
    .parameter "link"

    .prologue
    const/4 v1, 0x1

    .line 878
    :try_start_0
    const-string v2, "app://videoad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/fingersoft/game/MainActivity;->playVideoAd(I)V

    .line 897
    :goto_0
    return v1

    .line 882
    :cond_0
    const-string v2, "app://impactvideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fingersoft/videoads/ImpactVideoAds;->playVideo(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 886
    :cond_2
    :try_start_1
    const-string v2, "app://supersonicvideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 887
    sget-object v2, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fingersoft/videoads/SupersonicVideoAds;->playVideo(I)Z

    goto :goto_0

    .line 890
    :cond_3
    const-string v2, "iap://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fingersoft/game/MainActivity;->onRequestGooglePlayIAP(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disablePopupDialogs()V
    .locals 3

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoTimeoutDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoDlg:Lcom/fingersoft/game/CrossPromotionDialog;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoDlg:Lcom/fingersoft/game/CrossPromotionDialog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fingersoft/game/CrossPromotionDialog;->setTimeout(J)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mCrossPromoTimeoutDisabled:Z

    .line 403
    :cond_0
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->disablePopupDialogs()V

    .line 404
    :cond_1
    return-void
.end method

.method public disableScreenOn()V
    .locals 2

    .prologue
    .line 643
    :try_start_0
    iget-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mScreenOnEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 644
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setKeepScreenOn(Z)V

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mScreenOnEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableScreenOn()V
    .locals 2

    .prologue
    .line 634
    :try_start_0
    iget-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mScreenOnEnabled:Z

    if-nez v0, :cond_0

    .line 635
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setKeepScreenOn(Z)V

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/game/MainActivity;->mScreenOnEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/fingersoft/game/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideAds()V
    .locals 3

    .prologue
    .line 516
    :try_start_0
    const-string v1, "HillClimb"

    const-string v2, "Stop ad view"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->stopAdView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v6, Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-direct {v6}, Lcom/fingersoft/videoads/ImpactVideoAds;-><init>()V

    sput-object v6, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    .line 137
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v6, p0}, Lcom/fingersoft/videoads/ImpactVideoAds;->initialize(Landroid/app/Activity;)V

    .line 138
    new-instance v6, Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-direct {v6}, Lcom/fingersoft/videoads/SupersonicVideoAds;-><init>()V

    sput-object v6, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    .line 139
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v6, p0}, Lcom/fingersoft/videoads/SupersonicVideoAds;->initialize(Landroid/app/Activity;)V

    .line 141
    const-string v6, "activity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sput-object p0, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    .line 146
    const-string v6, "com.fingersoft.hillclimb.adfree_150000coins"

    const-string v7, "1.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v6, "com.fingersoft.hillclimb.adfree_300000coins"

    const-string v7, "2.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v6, "com.fingersoft.hillclimb.adfree_750000coins"

    const-string v7, "4.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v6, "com.fingersoft.hillclimb.adfree_2000000coins"

    const-string v7, "9.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v6, "com.fingersoft.hillclimb.adfree_4000000coins"

    const-string v7, "16.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v6, "com.fingersoft.hillclimb.adfree_8000000coins"

    const-string v7, "25.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v6, "com.fingersoft.hillclimb.adfree_20000000coins"

    const-string v7, "49.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_300000coins"

    const-string v7, "1.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_600000coins"

    const-string v7, "2.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_1500000coins"

    const-string v7, "4.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_4000000coins"

    const-string v7, "9.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_8000000coins"

    const-string v7, "16.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_16000000coins"

    const-string v7, "25.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v6, "com.fingersoft.hillclimb.iap2.adfree_40000000coins"

    const-string v7, "49.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_600000coins"

    const-string v7, "1.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_1200000coins"

    const-string v7, "2.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_3000000coins"

    const-string v7, "4.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_8000000coins"

    const-string v7, "9.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_16000000coins"

    const-string v7, "16.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_32000000coins"

    const-string v7, "25.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v6, "com.fingersoft.hillclimb.iap3.adfree_80000000coins"

    const-string v7, "49.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_1200000coins"

    const-string v7, "1.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_2400000coins"

    const-string v7, "2.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_6000000coins"

    const-string v7, "4.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_16000000coins"

    const-string v7, "9.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_32000000coins"

    const-string v7, "16.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_64000000coins"

    const-string v7, "25.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, "com.fingersoft.hillclimb.iap4.adfree_160000000coins"

    const-string v7, "49.99"

    invoke-static {v6, v7}, Lcom/fingersoft/game/MainActivity;->setInAppItemPrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "coins="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "coins"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/cocos2dx/lib/Cocos2dxUserDefault;->getIntegerForKey(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, requestParams:Ljava/lang/String;
    new-instance v6, Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {v6, p0, p0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;-><init>(Landroid/app/Activity;Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V

    sput-object v6, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 184
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setGravity(I)V

    .line 185
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setHorizontalGravity(I)V

    .line 186
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;

    sget-object v8, Lcom/fingersoft/game/MainActivity;->MOBFOX_PUBID:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMobFox;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;

    const-string v8, "4028cbff3a1c0028013a32e9a50701f0"

    invoke-direct {v7, v8}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderInMobi;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;

    const-string v8, "99985"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMillenial;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;

    sget-object v8, Lcom/fingersoft/game/MainActivity;->ADMOB_PUBID:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderAdmob;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMoPub;

    const-string v8, "1524e4e0a35111e281c11231392559e4"

    invoke-direct {v7, v8}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderMoPub;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;

    sget-object v8, Lcom/fingersoft/game/MainActivity;->JUMPTAP_PUBID:Ljava/lang/String;

    sget-object v9, Lcom/fingersoft/game/MainActivity;->JUMPTAP_ADSPOT_HIGH_PRIORITY:Ljava/lang/String;

    sget-object v10, Lcom/fingersoft/game/MainActivity;->JUMPTAP_SITEID:Ljava/lang/String;

    const-string v11, "HIGH"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;

    sget-object v8, Lcom/fingersoft/game/MainActivity;->JUMPTAP_PUBID:Ljava/lang/String;

    sget-object v9, Lcom/fingersoft/game/MainActivity;->JUMPTAP_ADSPOT_LOW_PRIORITY:Ljava/lang/String;

    sget-object v10, Lcom/fingersoft/game/MainActivity;->JUMPTAP_SITEID:Ljava/lang/String;

    const-string v11, "LOW"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderJumpTap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    new-instance v7, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;

    invoke-direct {v7, p0}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFs;-><init>(Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAdProvider(Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    const-string v7, "http://ads2.fingersoft.net:3000"

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withBaseServerAddress(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    const/4 v7, 0x2

    sget-object v8, Lcom/fingersoft/game/MainActivity;->FLURRY_ANALYTICS_SITE_ID:Ljava/lang/String;

    new-instance v9, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;

    invoke-direct {v9}, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withAnalyticsProvider(ILjava/lang/String;Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withMarketVariation(I)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->withRequestParameters(Ljava/lang/String;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->manage()V

    .line 213
    new-instance v6, Lcom/fingersoft/billing/BillingService;

    invoke-direct {v6}, Lcom/fingersoft/billing/BillingService;-><init>()V

    iput-object v6, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    .line 214
    iget-object v6, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fingersoft/billing/BillingService;->setContext(Landroid/content/Context;)V

    .line 216
    iget-object v6, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    invoke-virtual {v6}, Lcom/fingersoft/billing/BillingService;->checkBillingSupported()Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    const-string v6, "Unable to connect to Android market billing"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/fingersoft/game/MainActivity;->loadAppSettings()V

    .line 223
    invoke-direct {p0}, Lcom/fingersoft/game/MainActivity;->detectOpenGLES20()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, packageName:Ljava/lang/String;
    invoke-super {p0, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setPackageName(Ljava/lang/String;)V

    .line 237
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 240
    .local v3, framelayout_params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .local v2, framelayout:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 247
    .local v1, edittext_layout_params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, edittext:Lorg/cocos2dx/lib/Cocos2dxEditText;
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v6, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 255
    const-string v6, "activity"

    const-string v7, "Cocos2dxGLSurfaceView created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 262
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 263
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v7}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v6, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 264
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 266
    const-string v6, "activity"

    const-string v7, "Renderer set"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, v2}, Lcom/fingersoft/game/MainActivity;->setContentView(Landroid/view/View;)V

    .line 273
    sget-object v6, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Lcom/fingersoft/game/MainActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    const-string v6, "activity"

    const-string v7, "Activity created"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0           #edittext:Lorg/cocos2dx/lib/Cocos2dxEditText;
    .end local v1           #edittext_layout_params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #framelayout:Landroid/widget/FrameLayout;
    .end local v3           #framelayout_params:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_0
    const-string v6, "activity"

    const-string v7, "Init controller"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p0}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    move-result-object v6

    iput-object v6, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    .line 287
    iget-object v6, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v6}, Lcom/bda/controller/Controller;->init()Z

    .line 288
    iget-object v6, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    sget-object v7, Lcom/fingersoft/game/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v6, p0, v7}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/ControllerListener;Landroid/os/Handler;)V

    .line 290
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->registerUiChangeListener()V

    .line 293
    invoke-direct {p0}, Lcom/fingersoft/game/MainActivity;->givePendingReward()V

    .line 294
    return-void

    .line 280
    :cond_1
    const-string v6, "activity"

    const-string v7, "Your device doesn\'t support OpenGLES 2.0"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v6, "Your device doesn\'t support OpenGLES 2.0"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 282
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 346
    const-string v0, "activity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onDestroy()V

    .line 349
    const/4 v0, 0x0

    sput-object v0, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 351
    :cond_0
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v0, :cond_1

    .line 352
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v0}, Lcom/fingersoft/videoads/SupersonicVideoAds;->onDestroy()V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    invoke-virtual {v0}, Lcom/fingersoft/billing/BillingService;->unbind()V

    .line 357
    iget-object v0, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 361
    :cond_2
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 362
    return-void
.end method

.method onGetJarProductPurchase(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 554
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetJar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "GetJar purchase completed succesfully"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/fingersoft/game/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/fingersoft/game/MainActivity$2;-><init>(Lcom/fingersoft/game/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 566
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 567
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 730
    invoke-static {}, Lcom/fingersoft/game/MainActivity;->moreApps()V

    .line 732
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v4, "more/credits"

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 733
    new-instance v0, Landroid/app/Dialog;

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mActivityInstance:Lcom/fingersoft/game/MainActivity;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 734
    .local v0, dlg:Landroid/app/Dialog;
    const v3, 0x7f030007

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 735
    const-string v3, "Credits"

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    const v3, 0x7f070023

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 741
    .local v2, text:Landroid/widget/TextView;
    const-string v3, "Hill Climb Racing\nDeveloped by Fingersoft 2012\n\nWebsite:\nwww.fingersoft.net\n\nSupport:\nsupport@fingersoft.net\n\n\nProgramming:\nToni Fingerroos\n\nGraphics:\nKimmo \ufffdij\ufffdl\ufffd\nPia Turunen\nHenri Heikkinen\nThomas Wahlberg\n\nTesting:\nPia Turunen\nTeemu N\ufffdrhi\n\nOther resources:\nCocos2D-X:\nwww.cocos2d-x.org\n\nStage lock icon:\nhttp://newidols.ru\n\n\nMusic\nIn-game music:\nwww.playonloop.com/2010-music-loops/lucky-cop\n\nMenu music:\nhttp://www.playonloop.com/2011-music-loops/funk-break\n\n\nSounds:\nCoin pickup:\nwww.freesound.org/people/fins/sounds/146723\n\nBone crack:\nwww.freesound.org/people/Halleck/sounds/21914\n\nText splash (bonuses etc):\nwww.freesound.org/people/bennychico11/sounds/29542\n\nMenu click:\nwww.freesound.org/people/NenadSimic/sounds/157539\n\nFuel low warning:\nwww.freesound.org/people/gmtechb/sounds/49166\n\nPurchase sound:\nwww.freesound.org/people/Benboncan/sounds/91924\n\nCamera sound:\nwww.freesound.org/people/crk365/sounds/42862/\n\n\nCar engine sounds were created using a microphone :)\n\nThanks for playing and we hope you enjoy the game!\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 782
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 806
    .end local v0           #dlg:Landroid/app/Dialog;
    .end local v2           #text:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 807
    return-void

    .line 784
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 786
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v4, "more/facebook"

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 787
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "http://www.facebook.com/Fingersoft"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 789
    invoke-virtual {p0, v1}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 791
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x4

    if-ne p3, v3, :cond_3

    .line 793
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v4, "more/twitter"

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 794
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "http://twitter.com/#!/Fingersoft"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v1}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 798
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x5

    if-ne p3, v3, :cond_0

    .line 800
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v4, "more/googleplus"

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 801
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "http://plus.google.com/108100831193761361624/posts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 803
    invoke-virtual {p0, v1}, Lcom/fingersoft/game/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0, v1}, Lcom/fingersoft/game/MainActivity;->onControllerKeyEvent(IZ)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fingersoft/game/MainActivity;->onControllerKeyEvent(IZ)V

    goto :goto_0
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 8
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    :try_start_0
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->disablePopupDialogs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->askRating()V

    goto :goto_0

    .line 414
    :pswitch_3
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->enableAds()V

    goto :goto_0

    .line 415
    :pswitch_4
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->disableAds()V

    goto :goto_0

    .line 416
    :pswitch_5
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3, p2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_6
    invoke-direct {p0}, Lcom/fingersoft/game/MainActivity;->performFacebookLikeIAP()V

    goto :goto_0

    .line 420
    :pswitch_7
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/fingersoft/game/MainActivity;->playVideoAd(I)V

    goto :goto_0

    .line 423
    :pswitch_8
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->enableScreenOn()V

    goto :goto_0

    .line 427
    :pswitch_9
    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->disableScreenOn()V

    .line 428
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/fingersoft/game/MainActivity;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 432
    :pswitch_a
    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v4, "more"

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 433
    :cond_1
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    .line 434
    iget-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 435
    iget-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    const-string v4, "More"

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 438
    .local v2, lw:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/fingersoft/game/AboutListViewItem;>;"
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f020022

    const-string v5, "More apps"

    const-string v6, "Find more cool apps and games developed by Fingersoft"

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f020023

    const-string v5, "Share"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Share "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fingersoft/game/MainActivity;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with your friends"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f02001f

    const-string v5, "About"

    const-string v6, "People involved in creating this game"

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f020020

    const-string v5, "Fingersoft at Facebook"

    const-string v6, "Stay tuned for all new cool releases and updates in Facebook"

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f020024

    const-string v5, "Fingersoft at Twitter"

    const-string v6, "Follow all new cool releases and updates in Twitter"

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v3, Lcom/fingersoft/game/AboutListViewItem;

    const v4, 0x7f020021

    const-string v5, "Fingersoft at Google+"

    const-string v6, "Stay tuned for all new releases and updates in Google+"

    invoke-direct {v3, v4, v5, v6}, Lcom/fingersoft/game/AboutListViewItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v3, Lcom/fingersoft/game/AboutViewListAdapter;

    const v4, 0x7f030001

    invoke-direct {v3, p0, v4, v1}, Lcom/fingersoft/game/AboutViewListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 447
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 449
    iget-object v3, p0, Lcom/fingersoft/game/MainActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 306
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 652
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 654
    :try_start_0
    const-string v1, "activity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->onPause()V

    .line 656
    :cond_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v1}, Lcom/fingersoft/videoads/SupersonicVideoAds;->onPause()V

    .line 657
    :cond_1
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onPause()V

    .line 658
    :cond_2
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_3
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRequestGetJarIAP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "desc"
    .parameter "price"

    .prologue
    .line 393
    return-void
.end method

.method public onRequestGooglePlayIAP(Ljava/lang/String;)V
    .locals 3
    .parameter "id"

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/game/MainActivity;->mBillingService:Lcom/fingersoft/billing/BillingService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/fingersoft/billing/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    const-string v1, "Unable to use Google Play"

    const-string v2, "Make sure you have updated to recent Google Play version, or just try again later."

    invoke-static {v1, v2}, Lcom/fingersoft/game/MainActivity;->showMessageBox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRequestGooglePlayIAPRestore()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 331
    const-string v0, "activity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v0}, Lcom/fingersoft/videoads/SupersonicVideoAds;->onRestart()V

    .line 334
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 666
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 669
    :try_start_0
    const-string v1, "activity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->onResume()V

    .line 671
    :cond_0
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    invoke-virtual {v1}, Lcom/bda/controller/Controller;->onResume()V

    .line 673
    :cond_2
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v1}, Lcom/fingersoft/videoads/SupersonicVideoAds;->onResume()V

    .line 674
    :cond_3
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/fingersoft/game/MainActivity;->mImpactVideoAds:Lcom/fingersoft/videoads/ImpactVideoAds;

    invoke-virtual {v1, p0}, Lcom/fingersoft/videoads/ImpactVideoAds;->onResume(Landroid/app/Activity;)V

    .line 677
    :cond_4
    invoke-direct {p0}, Lcom/fingersoft/game/MainActivity;->givePendingReward()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 310
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 311
    iget-object v2, p0, Lcom/fingersoft/game/MainActivity;->mController:Lcom/bda/controller/Controller;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/bda/controller/Controller;->getState(I)I

    move-result v0

    .line 312
    .local v0, product:I
    if-nez v0, :cond_1

    const/4 v1, 0x3

    .line 313
    .local v1, type:I
    :goto_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 314
    invoke-static {v4, v1}, Lcom/fingersoft/game/MainActivity;->onControllerConnectionEvent(ZI)V

    .line 315
    const-string v2, "controller/moga/connected"

    invoke-static {v2}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 321
    .end local v0           #product:I
    .end local v1           #type:I
    :cond_0
    :goto_1
    return-void

    .line 312
    .restart local v0       #product:I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 316
    .restart local v1       #type:I
    :cond_2
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/fingersoft/game/MainActivity;->onControllerConnectionEvent(ZI)V

    .line 318
    const-string v2, "controller/moga/disconnected"

    invoke-static {v2}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 339
    const-string v0, "activity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/fingersoft/game/MainActivity;->mSupersonicVideoAds:Lcom/fingersoft/videoads/SupersonicVideoAds;

    invoke-virtual {v0}, Lcom/fingersoft/videoads/SupersonicVideoAds;->onStop()V

    .line 342
    :cond_0
    return-void
.end method

.method public viewAds()V
    .locals 3

    .prologue
    .line 506
    :try_start_0
    const-string v1, "HillClimb"

    const-string v2, "Start ad view"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v1, Lcom/fingersoft/game/MainActivity;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->startAdView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
