# const-string v1, "22455"
# invoke-static {v1}, Lcom/myfile/MyFile;->appendLog(Ljava/lang/String;)V
#invoke-static {v1}, Lcom/myfile/MyFile;->touchFile(Ljava/lang/String;)V
#invoke-static {v1}, Lcom/myfile/MyFile;->updateFile(Ljava/lang/String;)V

#const-string v1, "/sdcard/a.conf"
#invoke-static {v1}, Lcom/myfile/myapp/MyFile;->getRandomPeer(Ljava/lang/String;)Ljava/lang/String;
#move-result-object v1

# <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
# <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
# <uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />

#<uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS"/>
#<uses-permission android:name="android.permission.WRITE_SETTINGS"/>

# android:allowBackup="true"  android:debuggable="true" android:requestLegacyExternalStorage="true"


.class public Lcom/myfile/MyFile;
.super Ljava/lang/Object;
.source "MyFile.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 207
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLog(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    move-object v0, p0

    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "/storage/emulated/0/log.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 10
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_18

    .line 14
    move-object v5, v2

    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_3a

    move-result v5

    .line 25
    :cond_18
    :goto_18
    :try_start_18
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/FileWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 26
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 27
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 28
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_41

    .line 33
    :goto_39
    return-void

    .line 14
    :catch_3a
    move-exception v5

    move-object v3, v5

    .line 19
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 28
    :catch_41
    move-exception v5

    move-object v3, v5

    .line 33
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method public static getRandomPeer(Ljava/lang/String;)Ljava/lang/String;
    .registers 33

    .prologue
    .line 81
    move-object/from16 v2, p0

    const-string v23, ""

    move-object/from16 v4, v23

    .line 82
    const/16 v23, 0x0

    move/from16 v5, v23

    .line 83
    const/16 v23, 0x0

    move/from16 v6, v23

    .line 111
    const-string v23, "UTF-8"

    move-object/from16 v7, v23

    .line 112
    new-instance v23, Ljava/io/File;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v23

    .line 113
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v23

    new-instance v25, Ljava/lang/Long;

    move-wide/from16 v29, v23

    move-object/from16 v31, v25

    move-object/from16 v23, v31

    move-wide/from16 v24, v29

    move-object/from16 v26, v31

    move-wide/from16 v29, v24

    move-object/from16 v31, v26

    move-object/from16 v24, v31

    move-wide/from16 v25, v29

    move-object/from16 v27, v31

    invoke-direct/range {v24 .. v26}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v9, v23

    .line 114
    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->intValue()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v10, v23

    .line 116
    :try_start_50
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v25, v8

    invoke-direct/range {v24 .. v25}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v11, v23

    .line 117
    move-object/from16 v23, v11

    move-object/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Ljava/io/FileInputStream;->read([B)I

    move-result v23

    .line 118
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_6c} :catch_181
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_6c} :catch_186

    .line 121
    :goto_6c
    :try_start_6c
    new-instance v23, Ljava/lang/String;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v25, v10

    move-object/from16 v26, v7

    invoke-direct/range {v24 .. v26}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6c .. :try_end_7b} :catch_18b

    move-object/from16 v4, v23

    .line 122
    :goto_7d
    move-object/from16 v23, v4

    const-string v24, "\\n"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v11, v23

    .line 123
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v23

    .line 124
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v23

    .line 125
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v23

    .line 126
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 127
    const/16 v23, 0x0

    move/from16 v16, v23

    :goto_b8
    move/from16 v23, v16

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_190

    .line 141
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v23

    move/from16 v25, v15

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v16, v23

    .line 143
    const-string v23, ""

    move-object/from16 v4, v23

    .line 144
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_e3
    move/from16 v23, v17

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1fa

    .line 147
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 149
    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_f9
    move/from16 v23, v17

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_23c

    .line 155
    move-object/from16 v23, v14

    move/from16 v24, v16

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v17, v23

    .line 156
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 158
    move/from16 v23, v17

    move/from16 v19, v23

    :goto_121
    move/from16 v23, v19

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_271

    .line 193
    :goto_12f
    const-string v23, "/data/user/0/com.tunsafe.app/files/Config/tmp.conf"

    move-object/from16 v19, v23

    .line 195
    new-instance v23, Ljava/io/File;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    move-object/from16 v25, v19

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v23

    .line 197
    move-object/from16 v23, v20

    :try_start_144
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v23

    .line 198
    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z

    move-result v23

    .line 199
    new-instance v23, Ljava/io/BufferedWriter;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    new-instance v25, Ljava/io/FileWriter;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move-object/from16 v27, v20

    const/16 v28, 0x1

    invoke-direct/range {v26 .. v28}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v21, v23

    .line 200
    move-object/from16 v23, v21

    move-object/from16 v24, v4

    invoke-virtual/range {v23 .. v24}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v23

    .line 201
    move-object/from16 v23, v21

    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedWriter;->newLine()V

    .line 202
    move-object/from16 v23, v21

    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedWriter;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_17c} :catch_2f3

    .line 205
    :goto_17c
    move-object/from16 v23, v19

    move-object/from16 v2, v23

    return-object v2

    .line 118
    :catch_181
    move-exception v23

    move-object/from16 v11, v23

    goto/16 :goto_6c

    :catch_186
    move-exception v23

    move-object/from16 v11, v23

    goto/16 :goto_6c

    .line 121
    :catch_18b
    move-exception v23

    move-object/from16 v11, v23

    goto/16 :goto_7d

    .line 128
    :cond_190
    move-object/from16 v23, v11

    move/from16 v24, v16

    aget-object v23, v23, v24

    const-string v24, "Interface"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1a2

    .line 129
    const/16 v23, 0x1

    move/from16 v5, v23

    .line 130
    :cond_1a2
    move-object/from16 v23, v11

    move/from16 v24, v16

    aget-object v23, v23, v24

    const-string v24, "Peer"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1bc

    .line 131
    move/from16 v23, v15

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v15, v23

    .line 132
    const/16 v23, 0x1

    move/from16 v6, v23

    .line 133
    :cond_1bc
    move/from16 v23, v5

    if-eqz v23, :cond_1d0

    move/from16 v23, v6

    if-nez v23, :cond_1d0

    .line 134
    move-object/from16 v23, v12

    move-object/from16 v24, v11

    move/from16 v25, v16

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 135
    :cond_1d0
    move-object/from16 v23, v11

    move/from16 v24, v16

    aget-object v23, v23, v24

    const-string v24, "Peer"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1e6

    .line 136
    const/16 v23, 0x0

    move/from16 v5, v23

    .line 137
    const/16 v23, 0x1

    move/from16 v6, v23

    .line 138
    :cond_1e6
    move/from16 v23, v6

    if-eqz v23, :cond_1f6

    .line 139
    move-object/from16 v23, v13

    move-object/from16 v24, v11

    move/from16 v25, v16

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 127
    :cond_1f6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b8

    .line 145
    :cond_1fa
    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v12

    move/from16 v26, v17

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v4, v23

    .line 144
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e3

    .line 150
    :cond_23c
    move-object/from16 v23, v13

    move/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "Peer"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_26d

    .line 151
    move-object/from16 v23, v14

    move/from16 v24, v17

    new-instance v25, Ljava/lang/Integer;

    move/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v24, v30

    move/from16 v25, v29

    move-object/from16 v26, v30

    move/from16 v29, v25

    move-object/from16 v30, v26

    move-object/from16 v25, v30

    move/from16 v26, v29

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 149
    :cond_26d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_f9

    .line 159
    :cond_271
    move-object/from16 v23, v13

    move/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_287

    .line 158
    :cond_283
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_121

    .line 160
    :cond_287
    move/from16 v23, v18

    if-nez v23, :cond_2c9

    .line 161
    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v13

    move/from16 v26, v19

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v4, v23

    .line 162
    :cond_2c9
    move/from16 v23, v19

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_283

    move-object/from16 v23, v13

    move/from16 v24, v19

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "Peer"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_283

    .line 163
    goto/16 :goto_12f

    .line 202
    :catch_2f3
    move-exception v23

    move-object/from16 v21, v23

    goto/16 :goto_17c
.end method

.method public static touchFile(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    new-instance v5, Ljava/io/File;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "/storage/emulated/0/tmp.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 41
    move-object v5, v2

    :try_start_d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 42
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 43
    new-instance v5, Ljava/io/BufferedWriter;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/io/FileWriter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 44
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    .line 45
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 46
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_37} :catch_38

    .line 51
    :goto_37
    return-void

    .line 46
    :catch_38
    move-exception v5

    move-object v3, v5

    .line 51
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method public static updateFile(Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p0

    :try_start_2
    new-instance v9, Ljava/io/FileReader;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "/storage/emulated/0/tmp.conf"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 58
    new-instance v9, Ljava/io/BufferedReader;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v9

    .line 59
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 60
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 61
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 64
    move-object v9, v4

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v5, v9

    .line 65
    new-instance v9, Ljava/io/File;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "/storage/emulated/0/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ".conf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 66
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    .line 67
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v9

    .line 68
    new-instance v9, Ljava/io/BufferedWriter;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/io/FileWriter;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v6

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v9

    .line 69
    move-object v9, v7

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    .line 70
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V

    .line 71
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_91} :catch_92

    .line 77
    :goto_91
    return-void

    .line 71
    :catch_92
    move-exception v9

    move-object v2, v9

    .line 77
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_91
.end method
