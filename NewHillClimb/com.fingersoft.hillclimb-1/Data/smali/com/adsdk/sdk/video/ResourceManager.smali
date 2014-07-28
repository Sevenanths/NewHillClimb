.class public Lcom/adsdk/sdk/video/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BACK_ICON:Ljava/lang/String; = "browser_back.png"

.field public static final BOTTOMBAR_BG:Ljava/lang/String; = "bar.png"

.field public static final CLOSE_BUTTON_NORMAL:Ljava/lang/String; = "close_button_normal.png"

.field public static final CLOSE_BUTTON_PRESSED:Ljava/lang/String; = "close_button_pressed.png"

.field public static final DEFAULT_BACK_IMAGE_RESOURCE_ID:I = -0xe

.field public static final DEFAULT_BOTTOMBAR_BG_RESOURCE_ID:I = -0x2

.field public static final DEFAULT_CLOSE_BUTTON_NORMAL_RESOURCE_ID:I = -0x1d

.field public static final DEFAULT_CLOSE_BUTTON_PRESSED_RESOURCE_ID:I = -0x1e

.field public static final DEFAULT_EXTERNAL_IMAGE_RESOURCE_ID:I = -0x11

.field public static final DEFAULT_FORWARD_IMAGE_RESOURCE_ID:I = -0xf

.field public static final DEFAULT_PAUSE_IMAGE_RESOURCE_ID:I = -0xc

.field public static final DEFAULT_PLAY_IMAGE_RESOURCE_ID:I = -0xb

.field public static final DEFAULT_RELOAD_IMAGE_RESOURCE_ID:I = -0x10

.field public static final DEFAULT_REPLAY_IMAGE_RESOURCE_ID:I = -0xd

.field public static final DEFAULT_SKIP_IMAGE_RESOURCE_ID:I = -0x12

.field public static final DEFAULT_TOPBAR_BG_RESOURCE_ID:I = -0x1

.field public static final EXTERNAL_ICON:Ljava/lang/String; = "browser_external.png"

.field public static final FORWARD_ICON:Ljava/lang/String; = "browser_forward.png"

.field public static final PAUSE_ICON:Ljava/lang/String; = "video_pause.png"

.field public static final PLAY_ICON:Ljava/lang/String; = "video_play.png"

.field public static final RELOAD_ICON:Ljava/lang/String; = "video_replay.png"

.field public static final REPLAY_ICON:Ljava/lang/String; = "video_replay.png"

.field public static final RESOURCE_LOADED_MSG:I = 0x64

.field public static final SKIP_ICON:Ljava/lang/String; = "skip.png"

.field public static final TOPBAR_BG:Ljava/lang/String; = "bar.png"

.field public static final TYPE_FILE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_ZIP:I = 0x1

.field public static final VERSION:Ljava/lang/String; = "version.txt"

.field public static sCancel:Z

.field public static sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

.field public static sDownloading:Z

.field private static sResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->$assertionsDisabled:Z

    .line 37
    sput-boolean v1, Lcom/adsdk/sdk/video/ResourceManager;->sDownloading:Z

    .line 38
    sput-boolean v1, Lcom/adsdk/sdk/video/ResourceManager;->sCancel:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "ctx"
    .parameter "h"

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    .line 329
    iput-object p2, p0, Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/ResourceManager;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    return-object v0
.end method

.method private static buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "ctx"
    .parameter "name"

    .prologue
    .line 262
    const/4 v5, 0x0

    .line 264
    .local v5, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "defaultresources/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 267
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 271
    .local v6, m:Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 272
    .local v7, w:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 274
    .local v2, h:I
    const/4 v8, 0x1

    int-to-float v9, v7

    .line 273
    invoke-static {v8, v9, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v4, v8

    .line 276
    .local v4, imageWidth:I
    const/4 v8, 0x1

    int-to-float v9, v2

    .line 275
    invoke-static {v8, v9, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v3, v8

    .line 277
    .local v3, imageHeight:I
    if-ne v4, v7, :cond_0

    if-eq v3, v2, :cond_1

    .line 279
    :cond_0
    const/4 v8, 0x0

    .line 278
    invoke-static {v0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    :cond_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    if-eqz v5, :cond_2

    .line 288
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    const/4 v5, 0x0

    .line 294
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v3           #imageHeight:I
    .end local v4           #imageWidth:I
    .end local v6           #m:Landroid/util/DisplayMetrics;
    .end local v7           #w:I
    :cond_2
    :goto_0
    return-object v8

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ResourceManager cannot find resource "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    if-eqz v5, :cond_3

    .line 288
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 289
    const/4 v5, 0x0

    .line 294
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v8

    .line 286
    if-eqz v5, :cond_4

    .line 288
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 289
    const/4 v5, 0x0

    .line 293
    :cond_4
    :goto_2
    throw v8

    .line 286
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v5, :cond_3

    .line 288
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 289
    const/4 v5, 0x0

    goto :goto_1

    .line 290
    .restart local v2       #h:I
    .restart local v3       #imageHeight:I
    .restart local v4       #imageWidth:I
    .restart local v6       #m:Landroid/util/DisplayMetrics;
    .restart local v7       #w:I
    :catch_1
    move-exception v9

    goto :goto_0

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #h:I
    .end local v3           #imageHeight:I
    .end local v4           #imageWidth:I
    .end local v6           #m:Landroid/util/DisplayMetrics;
    .end local v7           #w:I
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v8

    goto :goto_1
.end method

.method public static cancel()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->sCancel:Z

    .line 319
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 321
    const/4 v0, 0x0

    sput-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    .line 324
    :cond_0
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 325
    return-void
.end method

.method public static getDefaultResource(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resId"

    .prologue
    .line 109
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getDefaultSkipButton(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 113
    const-string v0, "skip.png"

    invoke-static {p0, v0}, Lcom/adsdk/sdk/video/ResourceManager;->buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledVersion(Landroid/content/Context;)J
    .locals 8
    .parameter "ctx"

    .prologue
    .line 129
    const-wide/16 v3, -0x1

    .line 130
    .local v3, result:J
    const/4 v0, 0x0

    .line 132
    .local v0, in:Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, "version.txt"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v1, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    .local v1, isr:Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v2, reader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, version:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 148
    .end local v1           #isr:Ljava/io/InputStreamReader;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #version:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resources installed version:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 149
    return-wide v3

    .line 137
    :catch_0
    move-exception v6

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v6

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v6

    .line 140
    if-eqz v0, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    :cond_1
    :goto_1
    throw v6

    .line 143
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v1       #isr:Ljava/io/InputStreamReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v5       #version:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public static getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "ctx"
    .parameter "resourceId"

    .prologue
    .line 353
    sget-object v1, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 354
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    invoke-static {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager;->initDefaultResource(Landroid/content/Context;I)V

    .line 358
    sget-object v1, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 360
    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-object v0
.end method

.method private static initDefaultResource(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctx"
    .parameter "resource"

    .prologue
    .line 199
    sparse-switch p1, :sswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 201
    :sswitch_0
    const/16 v0, -0xb

    .line 202
    const-string v1, "video_play.png"

    .line 201
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 205
    :sswitch_1
    const/16 v0, -0xc

    .line 206
    const-string v1, "video_pause.png"

    .line 205
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_2
    const/16 v0, -0xd

    .line 210
    const-string v1, "video_replay.png"

    .line 209
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 213
    :sswitch_3
    const/16 v0, -0xe

    .line 214
    const-string v1, "browser_back.png"

    .line 213
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 217
    :sswitch_4
    const/16 v0, -0xf

    .line 218
    const-string v1, "browser_forward.png"

    .line 217
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 221
    :sswitch_5
    const/16 v0, -0x10

    .line 222
    const-string v1, "video_replay.png"

    .line 221
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 225
    :sswitch_6
    const/16 v0, -0x11

    .line 226
    const-string v1, "browser_external.png"

    .line 225
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 229
    :sswitch_7
    const/16 v0, -0x12

    .line 230
    const-string v1, "skip.png"

    .line 229
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 233
    :sswitch_8
    const/4 v0, -0x1

    const-string v1, "bar.png"

    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 236
    :sswitch_9
    const/4 v0, -0x2

    .line 237
    const-string v1, "bar.png"

    .line 236
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 240
    :sswitch_a
    const/16 v0, -0x1d

    .line 241
    const-string v1, "close_button_normal.png"

    .line 240
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 244
    :sswitch_b
    const/16 v0, -0x1e

    .line 245
    const-string v1, "close_button_pressed.png"

    .line 244
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_b
        -0x1d -> :sswitch_a
        -0x12 -> :sswitch_7
        -0x11 -> :sswitch_6
        -0x10 -> :sswitch_5
        -0xf -> :sswitch_4
        -0xe -> :sswitch_3
        -0xd -> :sswitch_2
        -0xc -> :sswitch_1
        -0xb -> :sswitch_0
        -0x2 -> :sswitch_9
        -0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isDownloading()Z
    .locals 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloading:Z

    return v0
.end method

.method private static registerImageResource(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "resId"
    .parameter "name"

    .prologue
    .line 252
    invoke-static {p0, p2}, Lcom/adsdk/sdk/video/ResourceManager;->buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 254
    sget-object v1, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v1, "registerImageResource"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawable was null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resourcesInstalled(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, files:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 125
    .end local v2           #result:Z
    :goto_1
    return v2

    .line 120
    .restart local v2       #result:Z
    :cond_0
    const-string v3, "version.txt"

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    const-string v3, "Resources already installed"

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x1

    goto :goto_1

    .line 119
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static saveInstalledVersion(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "version"

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "version.txt"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 156
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 157
    .local v0, osr:Ljava/io/OutputStreamWriter;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    if-eqz v1, :cond_0

    .line 164
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 170
    .end local v0           #osr:Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v2

    .line 162
    if-eqz v1, :cond_0

    .line 164
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v2

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    .line 162
    if-eqz v1, :cond_1

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    :cond_1
    :goto_1
    throw v2

    .line 165
    :catch_2
    move-exception v3

    goto :goto_1

    .restart local v0       #osr:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public containsResource(I)Z
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fetchResource(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "ctx"
    .parameter "url"
    .parameter "resourceId"

    .prologue
    .line 333
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;-><init>(Lcom/adsdk/sdk/video/ResourceManager;Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    :cond_0
    return-void
.end method

.method public getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "ctx"
    .parameter "resourceId"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 346
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 349
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .restart local v0       #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {p1, p2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 3

    .prologue
    .line 173
    iget-object v2, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    sget-boolean v2, Lcom/adsdk/sdk/video/ResourceManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 175
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    .local v1, pairsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 182
    .end local v1           #pairsEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 183
    return-void
.end method
