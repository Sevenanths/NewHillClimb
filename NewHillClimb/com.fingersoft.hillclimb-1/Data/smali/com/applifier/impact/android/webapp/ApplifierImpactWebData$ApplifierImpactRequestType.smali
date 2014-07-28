.class final enum Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
.super Ljava/lang/Enum;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ApplifierImpactRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Analytics:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field private static final synthetic ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

.field public static final enum VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "Analytics"

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "VideoPlan"

    invoke-direct {v0, v1, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "VideoViewed"

    invoke-direct {v0, v1, v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const-string v1, "Unsent"

    invoke-direct {v0, v1, v5}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueOf(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 2
    .parameter "value"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    return-object v0
.end method

.method public static values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    array-length v1, v0

    new-array v2, v1, [Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, output:Ljava/lang/String;
    return-object v0
.end method
