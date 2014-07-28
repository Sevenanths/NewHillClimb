.class public Lcom/adsdk/sdk/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static sFadeInAnimationId:I

.field private static sFadeOutAnimationId:I

.field private static sSlideInBottomAnimationId:I

.field private static sSlideInLeftAnimationId:I

.field private static sSlideInRightAnimationId:I

.field private static sSlideInTopAnimationId:I

.field private static sSlideOutBottomAnimationId:I

.field private static sSlideOutLeftAnimationId:I

.field private static sSlideOutRightAnimationId:I

.field private static sSlideOutTopAnimationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    .line 44
    sput v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    .line 45
    sput v0, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    .line 46
    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    .line 47
    sput v0, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    .line 48
    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    .line 49
    sput v0, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    .line 50
    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    .line 51
    sput v0, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    .line 52
    sput v0, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUserAgent()Ljava/lang/String;
    .locals 11

    .prologue
    .line 290
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 291
    .local v1, androidVersion:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 292
    .local v6, model:Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 293
    .local v0, androidBuild:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 294
    .local v3, l:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, language:Ljava/lang/String;
    const-string v5, "en"

    .line 296
    .local v5, locale:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 298
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    const-string v8, "Mozilla/5.0 (Linux; U; Android %1$s; %2$s; %3$s Build/%4$s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 305
    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    .line 304
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, userAgent:Ljava/lang/String;
    return-object v7
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 121
    .line 122
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, networkStatePermission:I
    if-nez v4, :cond_4

    .line 126
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 128
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 129
    const-string v5, "UNKNOWN"

    .line 176
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_0
    return-object v5

    .line 131
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 132
    .local v3, netType:I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 133
    .local v2, netSubtype:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 134
    const-string v5, "WIFI"

    goto :goto_0

    .line 135
    :cond_1
    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 136
    const-string v5, "WIMAX"

    goto :goto_0

    .line 137
    :cond_2
    if-nez v3, :cond_3

    .line 138
    packed-switch v2, :pswitch_data_0

    .line 170
    const-string v5, "MOBILE"

    goto :goto_0

    .line 140
    :pswitch_0
    const-string v5, "1xRTT"

    goto :goto_0

    .line 142
    :pswitch_1
    const-string v5, "CDMA"

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v5, "EDGE"

    goto :goto_0

    .line 146
    :pswitch_3
    const-string v5, "EVDO_0"

    goto :goto_0

    .line 148
    :pswitch_4
    const-string v5, "EVDO_A"

    goto :goto_0

    .line 150
    :pswitch_5
    const-string v5, "GPRS"

    goto :goto_0

    .line 152
    :pswitch_6
    const-string v5, "UMTS"

    goto :goto_0

    .line 154
    :pswitch_7
    const-string v5, "EHRPD"

    goto :goto_0

    .line 156
    :pswitch_8
    const-string v5, "EVDO_B"

    goto :goto_0

    .line 158
    :pswitch_9
    const-string v5, "HSDPA"

    goto :goto_0

    .line 160
    :pswitch_a
    const-string v5, "HSPA"

    goto :goto_0

    .line 162
    :pswitch_b
    const-string v5, "HSPAP"

    goto :goto_0

    .line 164
    :pswitch_c
    const-string v5, "HSUPA"

    goto :goto_0

    .line 166
    :pswitch_d
    const-string v5, "IDEN"

    goto :goto_0

    .line 168
    :pswitch_e
    const-string v5, "LTE"

    goto :goto_0

    .line 173
    :cond_3
    const-string v5, "UNKNOWN"

    goto :goto_0

    .line 176
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #netSubtype:I
    .end local v3           #netType:I
    :cond_4
    const-string v5, "UNKNOWN"

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public static getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 275
    :try_start_0
    const-class v3, Landroid/webkit/WebSettings;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 276
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 277
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettings;

    .line 280
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 282
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 285
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :goto_0
    return-object v3

    .line 281
    .restart local v0       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    :catchall_0
    move-exception v3

    .line 282
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 283
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/webkit/WebSettings;>;"
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 213
    const-string v6, "android_id"

    .line 212
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, androidId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "9774d56d682e549c"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    const-string v5, "0000000000000000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 218
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "device_id"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_1

    .line 221
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, uuid:Ljava/lang/String;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 223
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 225
    const-string v5, "%032X"

    .line 226
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    .line 227
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v8, v6, v7

    .line 225
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 227
    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v4           #uuid:Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "device_id"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown Android ID using pseudo unique id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 237
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    return-object v0

    .line 228
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Could not generate pseudo unique id"

    invoke-static {v5, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const-string v0, "9774d56d682e549c"

    goto :goto_0
.end method

.method public static getEnterAnimation(I)I
    .locals 1
    .parameter "animation"

    .prologue
    .line 423
    packed-switch p0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 425
    :pswitch_0
    sget v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    goto :goto_0

    .line 427
    :pswitch_1
    sget v0, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    goto :goto_0

    .line 429
    :pswitch_2
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    goto :goto_0

    .line 431
    :pswitch_3
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    goto :goto_0

    .line 433
    :pswitch_4
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    goto :goto_0

    .line 435
    :pswitch_5
    sget v0, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getEnterAnimationSet(I)Landroid/view/animation/AnimationSet;
    .locals 11
    .parameter "animation"

    .prologue
    .line 347
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 348
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 349
    .local v9, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 350
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 354
    packed-switch p0, :pswitch_data_0

    .line 380
    const/4 v10, 0x0

    .end local v10           #set:Landroid/view/animation/AnimationSet;
    :goto_0
    :pswitch_0
    return-object v10

    .line 360
    .restart local v10       #set:Landroid/view/animation/AnimationSet;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 361
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 362
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 365
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x4080

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 366
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 367
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 370
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 371
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 372
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 375
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 376
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 377
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getExitAnimation(I)I
    .locals 1
    .parameter "animation"

    .prologue
    .line 443
    packed-switch p0, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 445
    :pswitch_0
    sget v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    goto :goto_0

    .line 447
    :pswitch_1
    sget v0, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    goto :goto_0

    .line 449
    :pswitch_2
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    goto :goto_0

    .line 451
    :pswitch_3
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    goto :goto_0

    .line 453
    :pswitch_4
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    goto :goto_0

    .line 455
    :pswitch_5
    sget v0, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getExitAnimationSet(I)Landroid/view/animation/AnimationSet;
    .locals 11
    .parameter "animation"

    .prologue
    .line 385
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 386
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 387
    .local v9, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 388
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 392
    packed-switch p0, :pswitch_data_0

    .line 418
    const/4 v10, 0x0

    .end local v10           #set:Landroid/view/animation/AnimationSet;
    :goto_0
    :pswitch_0
    return-object v10

    .line 398
    .restart local v10       #set:Landroid/view/animation/AnimationSet;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 399
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 400
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 403
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 404
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 405
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 408
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 409
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 410
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 413
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 414
    .restart local v0       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 415
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 184
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 186
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 188
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 189
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 193
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 194
    .local v2, ex:Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 6
    .parameter "context"

    .prologue
    .line 241
    .line 242
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, isAccessFineLocation:I
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, isAccessCoarseLocation:I
    if-eqz v1, :cond_0

    .line 246
    if-nez v0, :cond_2

    .line 248
    :cond_0
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 247
    check-cast v4, Landroid/location/LocationManager;

    .line 249
    .local v4, locationManager:Landroid/location/LocationManager;
    if-eqz v4, :cond_2

    .line 250
    if-nez v1, :cond_1

    .line 252
    const-string v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 253
    .local v2, isGpsEnabled:Z
    if-eqz v2, :cond_1

    .line 255
    const-string v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 269
    .end local v2           #isGpsEnabled:Z
    .end local v4           #locationManager:Landroid/location/LocationManager;
    :goto_0
    return-object v5

    .line 258
    .restart local v4       #locationManager:Landroid/location/LocationManager;
    :cond_1
    if-nez v0, :cond_2

    .line 260
    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 262
    .local v3, isNetworkEnabled:Z
    if-eqz v3, :cond_2

    .line 264
    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_0

    .line 269
    .end local v3           #isNetworkEnabled:Z
    .end local v4           #locationManager:Landroid/location/LocationManager;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMemoryClass(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 311
    :try_start_0
    const-class v3, Landroid/app/ActivityManager;

    .line 312
    const-string v4, "getMemoryClass"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 314
    .local v2, getMemoryClassMethod:Ljava/lang/reflect/Method;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    check-cast v0, Landroid/app/ActivityManager;

    .line 315
    .local v0, ac:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 317
    .end local v0           #ac:Landroid/app/ActivityManager;
    .end local v2           #getMemoryClassMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, ex:Ljava/lang/Exception;
    const/16 v3, 0x10

    goto :goto_0
.end method

.method public static getTelephonyDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 200
    .line 201
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, telephonyPermission:I
    if-nez v0, :cond_0

    .line 205
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 206
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 208
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static initializeAnimations(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 323
    .local v0, r:Landroid/content/res/Resources;
    const-string v1, "fade_in"

    const-string v2, "anim"

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sFadeInAnimationId:I

    .line 325
    const-string v1, "fade_out"

    const-string v2, "anim"

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sFadeOutAnimationId:I

    .line 327
    const-string v1, "slide_bottom_in"

    .line 328
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInBottomAnimationId:I

    .line 329
    const-string v1, "slide_bottom_out"

    .line 330
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutBottomAnimationId:I

    .line 331
    const-string v1, "slide_top_in"

    const-string v2, "anim"

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInTopAnimationId:I

    .line 333
    const-string v1, "slide_top_out"

    .line 334
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutTopAnimationId:I

    .line 335
    const-string v1, "slide_left_in"

    .line 336
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInLeftAnimationId:I

    .line 337
    const-string v1, "slide_left_out"

    .line 338
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutLeftAnimationId:I

    .line 339
    const-string v1, "slide_right_in"

    .line 340
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideInRightAnimationId:I

    .line 341
    const-string v1, "slide_right_out"

    .line 342
    const-string v2, "anim"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adsdk/sdk/Util;->sSlideOutRightAnimationId:I

    .line 344
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    .line 94
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, networkStatePermission:I
    if-nez v3, :cond_3

    .line 99
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 102
    .local v1, mConnectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 116
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #mConnectivity:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v4

    .line 107
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v1       #mConnectivity:Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 109
    .local v2, netType:I
    if-eq v2, v5, :cond_2

    .line 110
    if-nez v2, :cond_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_0

    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #mConnectivity:Landroid/net/ConnectivityManager;
    .end local v2           #netType:I
    :cond_3
    move v4, v5

    .line 116
    goto :goto_0
.end method
