.class public Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;
    }
.end annotation


# static fields
.field static final APPRELEASE_APPNAME_ID:Ljava/lang/String; = "app_name"

.field static final APPRELEASE_DATAFILE:Ljava/lang/String; = "ignored_appreleases"

.field static final APPRELEASE_DESCRIPTION_ID:Ljava/lang/String; = "app_desc"

.field static final APPRELEASE_PACKAGE_ID:Ljava/lang/String; = "app_package_id"

.field static final APPRELEASE_TITLE_ID:Ljava/lang/String; = "app_title"


# instance fields
.field appInfo:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mAppDlg:Landroid/app/Dialog;

.field mCanShowDialog:Z

.field mIgnoreList:Ljava/lang/String;

.field mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

.field mStartupCount:I

.field volatile mTimeout:J


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/LinkListener;)V
    .locals 2
    .parameter "adManager"
    .parameter "linkListener"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mCanShowDialog:Z

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mTimeout:J

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mStartupCount:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 48
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    .line 49
    return-void
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 67
    const-string v0, "com.fingersoft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v0, p1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public execute(JI)V
    .locals 1
    .parameter "timeout"
    .parameter "startupCount"

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    invoke-direct {v0, p0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;-><init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;)V

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->show()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getCrossPromotion()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 62
    :cond_1
    :goto_0
    return-object v0

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    move-result-object v1

    .line 55
    .local v1, cl:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->getCrossPromotions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v0, v2

    .line 62
    goto :goto_0

    .line 55
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 57
    .local v0, c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->isInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 58
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getClickUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/LinkListener;->canShowAdWithLink(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1
.end method

.method public setTimeout(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    const-wide/16 v1, 0x0

    .line 237
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 238
    iput-wide v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mTimeout:J

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mTimeout:J

    goto :goto_0
.end method
