.class public Lcom/fingersoft/fsadsdk/advertising/AppRelease;
.super Ljava/lang/Object;
.source "AppRelease.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;,
        Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;
    }
.end annotation


# static fields
.field static final APPRELEASE_APPNAME_ID:Ljava/lang/String; = "app_name"

.field static final APPRELEASE_DATAFILE:Ljava/lang/String; = "ignored_appreleases"

.field static final APPRELEASE_DESCRIPTION_ID:Ljava/lang/String; = "app_desc"

.field static final APPRELEASE_PACKAGE_ID:Ljava/lang/String; = "app_package_id"

.field static final APPRELEASE_TITLE_ID:Ljava/lang/String; = "app_title"


# instance fields
.field layoutId:I

.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mAppDlg:Landroid/app/Dialog;

.field mCanShowDialog:Z

.field mIgnoreList:Ljava/lang/String;

.field mLoader:Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;

.field mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

.field mStartupCount:I

.field volatile mTimeout:J

.field viewId:I


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 3
    .parameter "adManager"

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mCanShowDialog:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mTimeout:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mStartupCount:I

    .line 252
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    .line 256
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    .line 258
    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mLoader:Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    .line 376
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 377
    return-void
.end method


# virtual methods
.method public execute(JI)V
    .locals 5
    .parameter "timeout"
    .parameter "startupCount"

    .prologue
    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mTimeout:J

    .line 396
    iput p3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mStartupCount:I

    .line 397
    const-string v2, "fsad-sdk"

    const-string v3, "Loading ignore list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ignored_appreleases"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ignore"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    .line 400
    const-string v2, "fsad-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loaded ignore list = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {v0, p0, v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;-><init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    .line 410
    .local v0, appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    const-string v2, "fsad-sdk"

    const-string v3, "appinfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    const-string v2, "fsad-sdk"

    const-string v3, "showing appinfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->show()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "fsad-sdk"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method inflateLayout()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->layoutId:I

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 382
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->viewId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, view:Landroid/view/View;
    return-void
.end method

.method public setTimeout(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    const-wide/16 v1, 0x0

    .line 387
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 388
    iput-wide v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mTimeout:J

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mTimeout:J

    goto :goto_0
.end method
