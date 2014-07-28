.class public Lcom/applifier/impact/android/ApplifierImpactUtils;
.super Ljava/lang/Object;
.source "ApplifierImpactUtils.java"


# static fields
.field private static final DEBUG_DN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applifier/impact/android/ApplifierImpactUtils;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .parameter "message"
    .parameter "cls"

    .prologue
    .line 38
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->logWithPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "obj"

    .prologue
    .line 44
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->logWithPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 125
    .local v3, m:Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 130
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 132
    .local v5, p_md5Data:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 133
    .local v4, mOutput:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v5

    if-lt v2, v6, :cond_0

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 126
    .end local v2           #i:I
    .end local v4           #mOutput:Ljava/lang/String;
    .end local v5           #p_md5Data:[B
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #i:I
    .restart local v4       #mOutput:Ljava/lang/String;
    .restart local v5       #p_md5Data:[B
    :cond_0
    aget-byte v6, v5, v2

    and-int/lit16 v0, v6, 0xff

    .line 136
    .local v0, b:I
    const/16 v6, 0xf

    if-gt v0, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 116
    .local v0, md:Ljava/security/MessageDigest;
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 117
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 118
    .local v1, sha1hash:[B
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static canUseExternalStorage()Z
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 237
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v1, buf:Ljava/lang/StringBuilder;
    array-length v7, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 103
    :cond_0
    aget-byte v0, p0, v6

    .line 104
    .local v0, b:B
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 105
    .local v2, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 107
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v2, :cond_1

    const/16 v5, 0x9

    if-gt v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    and-int/lit8 v2, v0, 0xf

    .line 109
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    .line 106
    if-lt v4, v5, :cond_2

    .line 103
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 107
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method public static createCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, tdir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 244
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/applifier/impact/android/ApplifierImpactUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 248
    :cond_0
    return-object v0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplifierVideoCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSizeForLocalFile(Ljava/lang/String;)J
    .locals 6
    .parameter "fileName"

    .prologue
    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, removeFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, cachedVideoFile:Ljava/io/File;
    const-wide/16 v2, -0x1

    .line 221
    .local v2, size:J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 225
    :cond_0
    return-wide v2
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 14
    .parameter "ctx"

    .prologue
    const/4 v11, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, debuggable:Z
    const/4 v8, 0x0

    .line 66
    .local v8, problemsWithData:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 68
    .local v7, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 69
    .local v0, appinfo:Landroid/content/pm/ApplicationInfo;
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    iput v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_1

    const/4 v3, 0x1

    .line 75
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v8, :cond_0

    .line 76
    const/4 v8, 0x0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x40

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 79
    .local v6, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 81
    .local v9, signatures:[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v11, v9

    if-lt v5, v11, :cond_2

    .line 98
    .end local v5           #i:I
    .end local v6           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v9           #signatures:[Landroid/content/pm/Signature;
    :cond_0
    :goto_2
    return v3

    .restart local v0       #appinfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v3, v11

    .line 69
    goto :goto_0

    .line 71
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 72
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x1

    goto :goto_0

    .line 82
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #i:I
    .restart local v6       #pinfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #signatures:[Landroid/content/pm/Signature;
    :cond_2
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 83
    .local v2, cf:Ljava/security/cert/CertificateFactory;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    aget-object v11, v9, v5

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v10, stream:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 85
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    sget-object v12, Lcom/applifier/impact/android/ApplifierImpactUtils;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v11, v12}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 86
    if-nez v3, :cond_0

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 90
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #cf:Ljava/security/cert/CertificateFactory;
    .end local v5           #i:I
    .end local v6           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v9           #signatures:[Landroid/content/pm/Signature;
    .end local v10           #stream:Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v4

    .line 91
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x1

    goto :goto_2

    .line 93
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v4

    .line 94
    .local v4, e:Ljava/security/cert/CertificateException;
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public static isFileInCache(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, targetFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, testFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static isFileRequiredByCampaigns(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, campaigns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, v4

    .line 265
    :cond_1
    :goto_0
    return v3

    .line 254
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, seekFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 265
    goto :goto_0

    .line 259
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 260
    .local v0, campaign:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, matchFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0
.end method

.method private static logWithPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "prefix"
    .parameter "message"

    .prologue
    .line 51
    const/16 v1, 0xdac

    .line 53
    .local v1, maxLogMsg:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int v2, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 60
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int v3, v0, v1

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_2

    .line 55
    const-string v2, "ApplifierImpact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v4, v0, v1

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    const-string v2, "ApplifierImpact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static readFile(Ljava/io/File;Z)Ljava/lang/String;
    .locals 8
    .parameter "fileToRead"
    .parameter "addLineBreaks"

    .prologue
    const/4 v5, 0x0

    .line 145
    const-string v3, ""

    .line 146
    .local v3, fileContent:Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 153
    .local v4, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    if-nez v4, :cond_1

    .line 165
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v3

    .line 177
    .end local v4           #line:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 154
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_0

    .line 159
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problem reading file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v6, v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2

    .line 167
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 168
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Problem closing reader: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v5, v6}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 174
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    const-string v6, "File did not exist or couldn\'t be read"

    const-class v7, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v6, v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2

    .line 159
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static removeFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 200
    if-eqz p0, :cond_0

    .line 201
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, removeFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/applifier/impact/android/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, cachedVideoFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 214
    .end local v0           #cachedVideoFile:Ljava/io/File;
    .end local v1           #removeFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0       #cachedVideoFile:Ljava/io/File;
    .restart local v1       #removeFile:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 211
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "fileToWrite"
    .parameter "content"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 184
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 186
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 187
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrote file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v3, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 196
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not write file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/applifier/impact/android/ApplifierImpactUtils;

    invoke-static {v3, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    .line 191
    const/4 v3, 0x0

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
