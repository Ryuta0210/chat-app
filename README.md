#テーブル設計

## users テーブル

| Column              | Type    | Options     |
| ------------------- | --------| ----------- |
| name                | string  | null: false |
| email               | string  | null: false, unique: true |
| encrypted_password  | string  | null: false |

### Association
- has_many : room_users
- has_many : rooms, through: room_users
- has_many : messages

## rooms テーブル

| Column  | Type    | Options     |
| --------| --------| ----------- |
| name    | string  | null: false |

### Association
- has_many : room_users
- has_many : rooms, through: room_users
- has_many : messages

## rooms_users テーブル
| Column              | Type      | Options                        |
| ------------------- | --------- | ------------------------------ |
| user                | reference | null: false, foreign_key: true |
| room                | reference | null: false, foreign_key: true |

### Association
- belongs_to: room
- belongs_to: user

## messages テーブル
| Column              | Type      | Options                        |
| ------------------- | --------- | ------------------------------ |
| content             | string    |                                |
| user                | reference | null: false, foreign_key: true |
| room                | reference | null: false, foreign_key: true |

### Association
- belongs_to: room
- belongs_to: user