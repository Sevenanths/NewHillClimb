.class public final enum Lcom/flurry/sdk/ej;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ej;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ej;

.field public static final enum b:Lcom/flurry/sdk/ej;

.field private static final synthetic e:[Lcom/flurry/sdk/ej;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5
    new-instance v0, Lcom/flurry/sdk/ej;

    const-string v1, "PhoneId"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/flurry/sdk/ej;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;

    .line 6
    new-instance v0, Lcom/flurry/sdk/ej;

    const-string v1, "Sha1Imei"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/flurry/sdk/ej;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/ej;->b:Lcom/flurry/sdk/ej;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/ej;

    sget-object v1, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ej;->b:Lcom/flurry/sdk/ej;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/ej;->e:[Lcom/flurry/sdk/ej;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/sdk/ej;->c:I

    .line 13
    iput-boolean p4, p0, Lcom/flurry/sdk/ej;->d:Z

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ej;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/flurry/sdk/ej;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ej;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ej;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/flurry/sdk/ej;->e:[Lcom/flurry/sdk/ej;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ej;

    return-object v0
.end method
