package user;


    public class User {
        int id;
        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getInfo() {
            return info;
        }

        public void setInfo(String info) {
            this.info = info;
        }


        String username;
        String info;

        public User() {

        }

        public User(int id, String username, String info) {
            super();
            this.id = id;
            this.username = username;
            this.info = info;

        }


        //将地址中存储的数据转换为String进行输出
        @Override
        public String toString() {
            return "User [id=" + id + ", username=" + username + ", password=" + info + ",  ]";
        }



    }

