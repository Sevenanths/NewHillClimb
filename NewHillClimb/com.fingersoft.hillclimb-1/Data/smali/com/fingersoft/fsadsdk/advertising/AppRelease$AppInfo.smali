.class Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
.super Ljava/lang/Object;
.source "AppRelease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/AppRelease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field private mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mAppname:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconURL:Ljava/lang/String;

.field mPackageId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 1
    .parameter
    .parameter "adManager"

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mTitle:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAppname:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mDesc:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIconURL:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    return-object v0
.end method


# virtual methods
.method donwloadIconFrom(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "iconUrl"

    .prologue
    const/4 v3, 0x0

    .line 114
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 116
    .local v1, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "fsad-sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Download error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method downloadIcon(Ljava/lang/String;)Z
    .locals 5
    .parameter "iconUrl"

    .prologue
    .line 101
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 103
    .local v1, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v3, 0x1

    .line 107
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return v3

    .line 106
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v3, "fsad-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x0

    goto :goto_0
.end method

.method getCrossPromotion()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    .locals 5

    .prologue
    .line 152
    const-string v2, "fsad-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ignore: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContainer()Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingersoft/fsadsdk/advertising/json/IResultContainer;->getPromotions()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;

    move-result-object v1

    .line 154
    .local v1, cl:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;
    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection;->getCrossPromotions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 154
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 156
    .local v0, c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAppname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method load(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 77
    const-string v2, "app_title"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mTitle:Ljava/lang/String;

    .line 78
    const-string v2, "app_name"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAppname:Ljava/lang/String;

    .line 79
    const-string v2, "app_desc"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mDesc:Ljava/lang/String;

    .line 80
    const-string v2, "app_package_id"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_icon.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 87
    .local v1, is:Ljava/io/FileInputStream;
    const-string v2, "src"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v1           #is:Ljava/io/FileInputStream;
    :goto_0
    const/4 v2, 0x1

    .line 94
    :goto_1
    return v2

    .line 90
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method save(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "pref"

    .prologue
    .line 129
    :try_start_0
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/fingersoft/fsadsdk/advertising/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    .local v2, iconBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_icon.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 133
    .local v3, out:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 135
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 138
    .end local v2           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 139
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "app_title"

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v4, "app_name"

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAppname:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v4, "app_desc"

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mDesc:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v4, "app_package_id"

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "apprelease/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/saved"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method show()Z
    .locals 17

    .prologue
    .line 166
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->getCrossPromotion()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    move-result-object v7

    .line 167
    .local v7, c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    if-nez v7, :cond_0

    const/4 v13, 0x0

    .line 248
    .end local v7           #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    :goto_0
    return v13

    .line 168
    .restart local v7       #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    new-instance v14, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v15}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v14, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v13}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "layout"

    const-string v16, "apprelease"

    invoke-static/range {v13 .. v16}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getResourceIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 170
    .local v10, id:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v13, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    const-string v13, "fsad-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "id was "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_icon"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 175
    .local v2, appIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_name"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 176
    .local v3, appName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_desc"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, appDesc:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_yes"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 179
    .local v6, buttonYes:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_no"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 180
    .local v5, buttonNo:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_never"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 182
    .local v4, buttonNever:Landroid/widget/Button;
    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPromotionStorageUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getImage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->donwloadIconFrom(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 186
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    const-string v14, "fsad-sdk"

    if-nez v9, :cond_2

    const-string v13, "Image is NULL"

    :goto_1
    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_1

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 190
    .local v11, manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    move-object v12, v7

    .line 191
    .local v12, promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v12}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v12}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$2;-><init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v12}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;-><init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v4, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "apprelease/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/show"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 244
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 186
    .end local v11           #manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .end local v12           #promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    :cond_2
    const-string v13, "Image is NOT null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    .end local v1           #appDesc:Landroid/widget/TextView;
    .end local v2           #appIcon:Landroid/widget/ImageView;
    .end local v3           #appName:Landroid/widget/TextView;
    .end local v4           #buttonNever:Landroid/widget/Button;
    .end local v5           #buttonNo:Landroid/widget/Button;
    .end local v6           #buttonYes:Landroid/widget/Button;
    .end local v7           #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #id:I
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v13, "fsad-sdk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
