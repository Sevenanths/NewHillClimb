.class public Lcom/adsdk/sdk/video/NavIcon;
.super Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;
.source "NavIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Lcom/adsdk/sdk/video/NavIconData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V
    .locals 5
    .parameter "context"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x1

    const/high16 v2, 0x4080

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/NavIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 44
    .local v0, padding:I
    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    .line 47
    invoke-virtual {p0, v0, v4, v0, v4}, Lcom/adsdk/sdk/video/NavIcon;->setPadding(IIII)V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    .line 52
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/NavIcon;->setVisibility(I)V

    .line 53
    iget-object v1, p2, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/NavIcon;->setImageDrawable(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/adsdk/sdk/video/NavIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/NavIcon;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/NavIcon;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "urlString"

    .prologue
    .line 96
    const/4 v7, 0x0

    .line 98
    .local v7, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    move-object v7, v0

    .line 100
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 103
    iget-object v12, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 104
    .local v9, m:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 105
    .local v11, w:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 107
    .local v4, h:I
    const/4 v12, 0x1

    int-to-float v13, v11

    .line 106
    invoke-static {v12, v13, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v6, v12

    .line 109
    .local v6, imageWidth:I
    const/4 v12, 0x1

    int-to-float v13, v4

    .line 108
    invoke-static {v12, v13, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v5, v12

    .line 110
    .local v5, imageHeight:I
    if-ne v6, v11, :cond_0

    if-eq v5, v4, :cond_1

    .line 112
    :cond_0
    const/4 v12, 0x0

    .line 111
    invoke-static {v1, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v2, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    if-eqz v7, :cond_2

    .line 121
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 122
    const/4 v7, 0x0

    .line 135
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v4           #h:I
    .end local v5           #imageHeight:I
    .end local v6           #imageWidth:I
    .end local v9           #m:Landroid/util/DisplayMetrics;
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #w:I
    :cond_2
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NavIcon cannot load resource "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    if-eqz v7, :cond_3

    .line 121
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    const/4 v7, 0x0

    .line 129
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :goto_1
    :try_start_4
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v10       #url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/InputStream;

    .line 131
    .local v8, is:Ljava/io/InputStream;
    const-string v12, "src"

    invoke-static {v8, v12}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    .line 132
    .local v2, d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 118
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v10           #url:Ljava/net/URL;
    :catchall_0
    move-exception v12

    .line 119
    if-eqz v7, :cond_4

    .line 121
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 122
    const/4 v7, 0x0

    .line 126
    :cond_4
    :goto_2
    throw v12

    .line 119
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v10       #url:Ljava/net/URL;
    :cond_5
    if-eqz v7, :cond_3

    .line 121
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 122
    const/4 v7, 0x0

    goto :goto_1

    .line 133
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v10           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 134
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot fetch image:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v4       #h:I
    .restart local v5       #imageHeight:I
    .restart local v6       #imageWidth:I
    .restart local v9       #m:Landroid/util/DisplayMetrics;
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #w:I
    :catch_2
    move-exception v12

    goto :goto_0

    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v4           #h:I
    .end local v5           #imageHeight:I
    .end local v6           #imageWidth:I
    .end local v9           #m:Landroid/util/DisplayMetrics;
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #w:I
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v12

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v13

    goto :goto_2

    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v10       #url:Ljava/net/URL;
    :catch_5
    move-exception v12

    goto :goto_1
.end method

.method private setImageDrawable(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/video/NavIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/video/NavIcon$1;-><init>(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 142
    :try_start_0
    iget-object v6, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    instance-of v6, v6, Lcom/adsdk/sdk/video/RichMediaActivity;

    if-eqz v6, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 144
    .local v0, activity:Lcom/adsdk/sdk/video/RichMediaActivity;
    iget-object v6, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget v6, v6, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 145
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 146
    iget-object v7, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 145
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v0           #activity:Lcom/adsdk/sdk/video/RichMediaActivity;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v0       #activity:Lcom/adsdk/sdk/video/RichMediaActivity;
    :cond_1
    iget-object v6, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v5, v6, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    .line 150
    .local v5, url:Ljava/lang/String;
    const-string v6, "market:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 151
    const-string v6, "http://market.android.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 152
    const-string v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 153
    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 154
    const-string v6, "voicemail:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 155
    const-string v6, "geo:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 156
    const-string v6, "google.streetview:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 158
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 157
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v0           #activity:Lcom/adsdk/sdk/video/RichMediaActivity;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t open URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v7, v7, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #activity:Lcom/adsdk/sdk/video/RichMediaActivity;
    .restart local v5       #url:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "mfox:external:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    new-instance v3, Landroid/content/Intent;

    .line 166
    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 165
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v6, "mfox:replayvideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 173
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v6, "replayVideo"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 174
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 175
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v4           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string v6, "Your activity class has no replayVideo method"

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const-string v6, "mfox:playvideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 185
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v6, "playVideo"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 186
    .restart local v4       #method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 187
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v4           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 188
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_5
    const-string v6, "Your activity class has no playVideo method"

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 190
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const-string v6, "mfox:skip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 195
    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v6, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v6, v6, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/adsdk/sdk/video/RichMediaActivity;->navigate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
