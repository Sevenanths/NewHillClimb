.class public Lcom/fingersoft/game/CrossPromotionDialog;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/game/CrossPromotionDialog$1;,
        Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;,
        Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    }
.end annotation


# static fields
.field static final APPRELEASE_APPNAME_ID:Ljava/lang/String; = "app_name"

.field static final APPRELEASE_DATAFILE:Ljava/lang/String; = "ignored_appreleases"

.field static final APPRELEASE_DESCRIPTION_ID:Ljava/lang/String; = "app_desc"

.field static final APPRELEASE_PACKAGE_ID:Ljava/lang/String; = "app_package_id"

.field static final APPRELEASE_TITLE_ID:Ljava/lang/String; = "app_title"


# instance fields
.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mAppDlg:Landroid/app/Dialog;

.field mCanShowDialog:Z

.field mIgnoreList:Ljava/lang/String;

.field mLoader:Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;

.field mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

.field mStartupCount:I

.field volatile mTimeout:J


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 3
    .parameter "adManager"

    .prologue
    const/4 v2, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mCanShowDialog:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mTimeout:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mStartupCount:I

    .line 206
    iput-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    .line 210
    iput-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    .line 212
    iput-object v2, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mLoader:Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 326
    return-void
.end method


# virtual methods
.method public execute(JI)V
    .locals 7
    .parameter "timeout"
    .parameter "startupCount"

    .prologue
    const/4 v6, 0x1

    .line 340
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    iput-wide v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mTimeout:J

    .line 341
    iput p3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mStartupCount:I

    .line 342
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "ignore"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-direct {v0, p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;-><init>(Lcom/fingersoft/game/CrossPromotionDialog;)V

    .line 354
    .local v0, appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->load(Landroid/content/SharedPreferences;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ne v3, v6, :cond_0

    .line 358
    :try_start_1
    invoke-virtual {v0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->show()Z

    .line 361
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 362
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v3, "ignore"

    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_icon.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    .end local v0           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 369
    .restart local v0       #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 373
    .restart local v0       #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    :cond_0
    new-instance v3, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;-><init>(Lcom/fingersoft/game/CrossPromotionDialog;Lcom/fingersoft/game/CrossPromotionDialog$1;)V

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mLoader:Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;

    .line 374
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mLoader:Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public setTimeout(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    const-wide/16 v1, 0x0

    .line 330
    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 331
    iput-wide v1, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mTimeout:J

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/fingersoft/game/CrossPromotionDialog;->mTimeout:J

    goto :goto_0
.end method
