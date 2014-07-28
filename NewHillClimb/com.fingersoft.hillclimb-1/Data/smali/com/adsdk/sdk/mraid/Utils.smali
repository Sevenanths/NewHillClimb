.class public Lcom/adsdk/sdk/mraid/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    .line 42
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 44
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 46
    .local v4, messageDigest:[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v2, hexString:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :goto_1
    return-object v5

    .line 48
    .restart local v0       #digest:Ljava/security/MessageDigest;
    .restart local v2       #hexString:Ljava/lang/StringBuffer;
    .restart local v3       #i:I
    .restart local v4       #messageDigest:[B
    :cond_0
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :catch_0
    move-exception v1

    .line 52
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, ""

    goto :goto_1
.end method
