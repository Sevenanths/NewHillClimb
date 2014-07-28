.class public Lcom/applifier/impact/android/data/ApplifierImpactDevice;
.super Ljava/lang/Object;
.source "ApplifierImpactDevice.java"


# static fields
.field public static ADVERTISING_TRACKING_INFO:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMacAddressFromInterface(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .locals 11
    .parameter "intf"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 127
    const/4 v5, 0x0

    .line 129
    .local v5, mac:[B
    if-nez p0, :cond_0

    .line 130
    const-string v7, "unknown"

    .line 152
    :goto_0
    return-object v7

    .line 135
    :cond_0
    :try_start_0
    const-class v7, Ljava/net/NetworkInterface;

    const-string v8, "getHardwareAddress"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 136
    .local v4, layertype:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v4           #layertype:Ljava/lang/reflect/Method;
    :goto_1
    if-nez v5, :cond_1

    .line 143
    const-string v7, "unknown"

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Could not getHardwareAddress"

    const-class v8, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v7, v8}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 146
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_2
    array-length v7, v5

    if-lt v3, v7, :cond_3

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, retMacAddress:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 148
    .end local v6           #retMacAddress:Ljava/lang/String;
    :cond_3
    const-string v7, "%02X:"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-byte v9, v5, v3

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static fetchAdvertisingTrackingInfo(Landroid/app/Activity;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 85
    :try_start_0
    const-string v5, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, GooglePlayServicesUtil:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "isGooglePlayServicesAvailable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 87
    .local v4, isGooglePlayServicesAvailable:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    const-string v5, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, AdvertisingClientId:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getAdvertisingIdInfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 90
    .local v3, getAdvertisingIdInfo:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    .line 97
    .end local v0           #AdvertisingClientId:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #GooglePlayServicesUtil:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #getAdvertisingIdInfo:Ljava/lang/reflect/Method;
    .end local v4           #isGooglePlayServicesAvailable:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 92
    .restart local v1       #GooglePlayServicesUtil:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #isGooglePlayServicesAvailable:Ljava/lang/reflect/Method;
    :cond_0
    const-string v5, "Unable to fetch advertising tracking info"

    const-class v6, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1           #GooglePlayServicesUtil:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #isGooglePlayServicesAvailable:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Warning! Google Play Services is needed to access Android advertising identifier. Please add Google Play Services to your game."

    const-class v6, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 101
    :try_start_0
    sget-object v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    .local v2, getId:Ljava/lang/reflect/Method;
    sget-object v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v2           #getId:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .end local v0           #Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    move-object v3, v4

    .line 106
    goto :goto_0

    .line 107
    .restart local v0       #Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v3, v4

    .line 108
    goto :goto_0
.end method

.method public static getAndroidId(Z)Ljava/lang/String;
    .locals 4
    .parameter "md5hashed"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "unknown"

    .line 42
    .local v0, androidID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-static {v0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 54
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problems fetching androidId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-string v2, "unknown"

    goto :goto_0
.end method

.method public static getAndroidSerial()Ljava/lang/String;
    .locals 8

    .prologue
    .line 58
    const-string v1, "unknown"

    .line 61
    .local v1, androidSerial:Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    .local v3, get:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 64
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .end local v2           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #get:Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "wifi"

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    return v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 6
    .parameter "interfaceName"

    .prologue
    const/4 v3, 0x0

    .line 156
    const/4 v1, 0x0

    .line 159
    .local v1, interfaces:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v3

    .line 175
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 162
    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 166
    .local v2, intf:Ljava/net/NetworkInterface;
    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning interface: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v3, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, intf:Ljava/net/NetworkInterface;
    const-string v1, "eth0"

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string v1, "wlan0"

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 80
    :cond_0
    invoke-static {v0}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->buildMacAddressFromInterface(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSize()I
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 114
    :try_start_0
    sget-object v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    .local v0, Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 117
    .local v2, isLimitAdTrackingEnabled:Ljava/lang/reflect/Method;
    sget-object v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->ADVERTISING_TRACKING_INFO:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 121
    .end local v2           #isLimitAdTrackingEnabled:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .end local v0           #Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    move v3, v4

    .line 119
    goto :goto_0

    .line 120
    .restart local v0       #Info:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v3, v4

    .line 121
    goto :goto_0
.end method

.method public static isUsingWifi()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, mConnectivity:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mConnectivity:Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 191
    .restart local v1       #mConnectivity:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 196
    .local v2, mTelephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 197
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 202
    .local v3, netType:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_0
.end method
