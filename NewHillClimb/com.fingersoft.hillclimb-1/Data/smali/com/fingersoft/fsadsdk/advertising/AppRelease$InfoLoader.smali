.class Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;
.super Landroid/os/AsyncTask;
.source "AppRelease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/AppRelease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;


# direct methods
.method private constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;
    .locals 17
    .parameter "adManager"

    .prologue
    .line 270
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v2, appInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, packageName:Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "http://ads.fingersoft.net/mobile/apprelease?appid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&locale="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&platform=android"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&startcount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget v14, v14, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mStartupCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 281
    .local v12, url:Ljava/net/URL;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 283
    .local v6, in:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, str:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 317
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v8           #locale:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    .end local v12           #url:Ljava/net/URL;
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    if-nez v13, :cond_7

    .line 342
    :goto_3
    const/4 v13, 0x0

    return-object v13

    .line 284
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v8       #locale:Ljava/lang/String;
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #str:Ljava/lang/String;
    .restart local v12       #url:Ljava/net/URL;
    :cond_2
    :try_start_2
    const-string v13, "#"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 286
    const-string v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, lineSplit:[Ljava/lang/String;
    array-length v13, v7

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 289
    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, idSplit:[Ljava/lang/String;
    array-length v13, v5

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 292
    const/4 v13, 0x0

    aget-object v9, v5, v13

    .line 294
    .local v9, packageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 299
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    check-cast v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    .line 308
    .restart local v1       #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    :goto_4
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const-string v14, "title"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    aget-object v13, v7, v13

    iput-object v13, v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mTitle:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 319
    .end local v1           #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    .end local v5           #idSplit:[Ljava/lang/String;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #lineSplit:[Ljava/lang/String;
    .end local v8           #locale:Ljava/lang/String;
    .end local v9           #packageId:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    .end local v12           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    .restart local v5       #idSplit:[Ljava/lang/String;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #lineSplit:[Ljava/lang/String;
    .restart local v8       #locale:Ljava/lang/String;
    .restart local v9       #packageId:Ljava/lang/String;
    .restart local v10       #packageName:Ljava/lang/String;
    .restart local v11       #str:Ljava/lang/String;
    .restart local v12       #url:Ljava/net/URL;
    :cond_3
    :try_start_3
    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    .end local v1           #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-direct {v1, v13, v14}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;-><init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease;Lcom/fingersoft/fsadsdk/advertising/AdManager;)V

    .line 304
    .restart local v1       #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    invoke-interface {v2, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput-object v9, v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mPackageId:Ljava/lang/String;

    goto :goto_4

    .line 309
    :cond_4
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const-string v14, "appname"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    aget-object v13, v7, v13

    iput-object v13, v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAppname:Ljava/lang/String;

    goto/16 :goto_0

    .line 310
    :cond_5
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const-string v14, "description"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    aget-object v13, v7, v13

    iput-object v13, v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    :cond_6
    const/4 v13, 0x1

    aget-object v13, v5, v13

    const-string v14, "icon"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v7, v13

    iput-object v13, v1, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mIconURL:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v1           #appInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    .end local v5           #idSplit:[Ljava/lang/String;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #lineSplit:[Ljava/lang/String;
    .end local v8           #locale:Ljava/lang/String;
    .end local v9           #packageId:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    .end local v12           #url:Ljava/net/URL;
    :cond_7
    :try_start_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 326
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;>;"
    const/4 v13, 0x0

    aget-object v15, p1, v13

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v13, v15, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v15, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 339
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;>;"
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 331
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;>;"
    :cond_8
    :try_start_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    invoke-virtual {v13}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->isValid()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    iput-object v13, v15, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 353
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 354
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ignore"

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    if-eqz v3, :cond_0

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-wide v5, v5, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 361
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->show()Z

    .line 371
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 366
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$InfoLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mShowInfo:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    invoke-virtual {v3, v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->save(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
