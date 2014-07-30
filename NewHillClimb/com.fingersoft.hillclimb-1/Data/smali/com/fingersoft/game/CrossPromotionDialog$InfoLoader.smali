.class Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;
.super Landroid/os/AsyncTask;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/CrossPromotionDialog;
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
.field final synthetic this$0:Lcom/fingersoft/game/CrossPromotionDialog;


# direct methods
.method private constructor <init>(Lcom/fingersoft/game/CrossPromotionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fingersoft/game/CrossPromotionDialog;Lcom/fingersoft/game/CrossPromotionDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;-><init>(Lcom/fingersoft/game/CrossPromotionDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;
    .locals 17
    .parameter "adManager"

    .prologue
    .line 221
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v2, appInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, locale:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, packageName:Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://ads.fingersoft.net/mobile/apprelease?appid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&locale="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&platform=android"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&startcount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget v15, v15, Lcom/fingersoft/game/CrossPromotionDialog;->mStartupCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 231
    .local v13, url:Ljava/net/URL;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v7, in:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, str:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 234
    const-string v14, "#"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 236
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, lineSplit:[Ljava/lang/String;
    array-length v14, v8

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 239
    const/4 v14, 0x0

    aget-object v14, v8, v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, idSplit:[Ljava/lang/String;
    array-length v14, v6

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 242
    const/4 v14, 0x0

    aget-object v10, v6, v14

    .line 244
    .local v10, packageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 249
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    check-cast v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    .line 258
    .restart local v1       #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    :goto_1
    const/4 v14, 0x1

    aget-object v14, v6, v14

    const-string v15, "title"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v1           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    .end local v6           #idSplit:[Ljava/lang/String;
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #lineSplit:[Ljava/lang/String;
    .end local v9           #locale:Ljava/lang/String;
    .end local v10           #packageId:Ljava/lang/String;
    .end local v11           #packageName:Ljava/lang/String;
    .end local v12           #str:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;>;"
    const/4 v14, 0x0

    aget-object v15, p1, v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v0, v15, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v15, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 289
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v14, 0x0

    :goto_4
    return-object v14

    .line 253
    .restart local v1       #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    .restart local v6       #idSplit:[Ljava/lang/String;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #lineSplit:[Ljava/lang/String;
    .restart local v9       #locale:Ljava/lang/String;
    .restart local v10       #packageId:Ljava/lang/String;
    .restart local v11       #packageName:Ljava/lang/String;
    .restart local v12       #str:Ljava/lang/String;
    .restart local v13       #url:Ljava/net/URL;
    :cond_3
    :try_start_2
    new-instance v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    .end local v1           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    invoke-direct {v1, v14}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;-><init>(Lcom/fingersoft/game/CrossPromotionDialog;)V

    .line 254
    .restart local v1       #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iput-object v10, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    goto :goto_1

    .line 259
    :cond_4
    const/4 v14, 0x1

    aget-object v14, v6, v14

    const-string v15, "appname"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :cond_5
    const/4 v14, 0x1

    aget-object v14, v6, v14

    const-string v15, "description"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 261
    :cond_6
    const/4 v14, 0x1

    aget-object v14, v6, v14

    const-string v15, "icon"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v1, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIconURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 267
    .end local v1           #appInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
    .end local v6           #idSplit:[Ljava/lang/String;
    .end local v8           #lineSplit:[Ljava/lang/String;
    .end local v10           #packageId:Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 281
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v9           #locale:Ljava/lang/String;
    .end local v11           #packageName:Ljava/lang/String;
    .end local v12           #str:Ljava/lang/String;
    .end local v13           #url:Ljava/net/URL;
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-virtual {v14}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->isValid()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iput-object v14, v15, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-virtual {v14}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->downloadIcon()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v14

    if-eqz v14, :cond_1

    .line 285
    const/4 v14, 0x0

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 302
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 303
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ignore"

    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v4, v4, Lcom/fingersoft/game/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    if-eqz v3, :cond_0

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-wide v5, v5, Lcom/fingersoft/game/CrossPromotionDialog;->mTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 310
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-virtual {v3}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->show()Z

    .line 320
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 315
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$InfoLoader;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    invoke-virtual {v3, v2}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->save(Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
