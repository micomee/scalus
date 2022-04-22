.class public Lcom/myfile/MyIP;
.super Ljava/lang/Object;
.source "MyIP.java"

#const-string v0, "192.168.1.1"
#invoke-static {v0}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;
#move-result-object v1

#invoke-static {v0}, Lcom/myfile/MyIP;->getPrevIPV4Address(Ljava/lang/String;)Ljava/lang/String;
#move-result-object v1

#invoke-static {v0}, Lcom/myfile/MyIP;->getRandomIP(Ljava/lang/String;)Ljava/lang/String;
#move-result-object v1

#random sleep 0.1-0.5   ip [ -1 1 2 3 ]

# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 12
    move-object v0, p0

    move-object v5, v0

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 13
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move-object v6, v2

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move-object v6, v2

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 16
    move v5, v3

    int-to-byte v5, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_43

    add-int/lit8 v3, v3, 0x1

    .line 17
    :cond_43
    const-string v5, "%d.%d.%d.%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move v9, v3

    const/16 v10, 0x18

    ushr-int/lit8 v9, v9, 0x18

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    new-instance v10, Ljava/lang/Integer;

    move v12, v9

    move-object v13, v10

    move-object v9, v13

    move v10, v12

    move-object v11, v13

    move v12, v10

    move-object v13, v11

    move-object v10, v13

    move v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move v9, v3

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    new-instance v10, Ljava/lang/Integer;

    move v12, v9

    move-object v13, v10

    move-object v9, v13

    move v10, v12

    move-object v11, v13

    move v12, v10

    move-object v13, v11

    move-object v10, v13

    move v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    move v9, v3

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    new-instance v10, Ljava/lang/Integer;

    move v12, v9

    move-object v13, v10

    move-object v9, v13

    move v10, v12

    move-object v11, v13

    move v12, v10

    move-object v13, v11

    move-object v10, v13

    move v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x3

    move v9, v3

    const/4 v10, 0x0

    shr-int/lit8 v9, v9, 0x0

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    new-instance v10, Ljava/lang/Integer;

    move v12, v9

    move-object v13, v10

    move-object v9, v13

    move v10, v12

    move-object v11, v13

    move v12, v10

    move-object v13, v11

    move-object v10, v13

    move v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public static getPrevIPV4Address(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 20
    move-object v0, p0

    move-object v6, v0

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 21
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v2

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 22
    move-object v6, v2

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 23
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 24
    move-object v6, v3

    move-object v0, v6

    return-object v0
.end method

.method public static getRandomIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    .line 38
    move-object v0, p0

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_4c

    move-object v2, v7

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    move-object v9, v2

    array-length v9, v9

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    move v3, v7

    .line 42
    move v7, v3

    const/4 v8, 0x0

    if-ne v7, v8, :cond_1d

    .line 43
    move-object v7, v0

    invoke-static {v7}, Lcom/myfile/MyIP;->getPrevIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 55
    :goto_1c
    return-object v0

    .line 45
    :cond_1d
    move v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_28

    .line 46
    move-object v7, v0

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1c

    .line 48
    :cond_28
    move v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    .line 49
    move-object v7, v0

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 50
    move-object v7, v4

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1c

    .line 53
    :cond_39
    move-object v7, v0

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 54
    move-object v7, v4

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 55
    move-object v7, v5

    invoke-static {v7}, Lcom/myfile/MyIP;->getNextIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_1c

    .line 38
    :array_4c
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
    .end array-data
.end method
