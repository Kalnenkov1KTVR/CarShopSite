/**
 * Класс шифрует пароль алгоритмом SHA-256.
 *
 */
package util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public class EncryptPass {

    private String encriptPassword;

    /**
     * Конструктор инициализирует поле encriptPassword, где хранится хеш пароля.
     *
     * @param password - шифруемый пароль (String)
     * @param salts - соль (String)
     * @throws NoSuchAlgorithmException
     */
    public EncryptPass(String password, String salts) throws NoSuchAlgorithmException {
        setEncriptPassword(password, salts);
    }

    /**
     * Конструктор инициализирует поле encriptPassword, где хранится хеш пароля.
     * Хеш пароля без соли! Т.е salts="0".
     *
     * @param password
     * @throws NoSuchAlgorithmException
     */
    public EncryptPass(String password) throws NoSuchAlgorithmException {
        setEncriptPassword(password, "0");
    }

    /**
     * Конструктор создает пустой класс
     */
    public EncryptPass() {
    }

    /**
     * Метод создает хеш пароля с солью алгоритмом SHA-256 и инициирует поле
     * класса encriptPassword.
     *
     * @param password
     * @param salts
     * @throws NoSuchAlgorithmException
     */
    public void setEncriptPassword(String password, String salts) throws NoSuchAlgorithmException {
        password = salts + password;
        MessageDigest m = MessageDigest.getInstance("SHA-256");
        m.update(password.getBytes(), 0, password.length());
        this.encriptPassword = new BigInteger(1, m.digest()).toString(16);
    }

    /**
     * Метод возвращает зашифрованный пароль
     *
     * @return - зашифрованный пароль (SHA-256) (String)
     */
    public String getEncriptPassword() {
        return this.encriptPassword;
    }

    /**
     * Метод генерирует соль. Используется md5 алгоритм. Создает хеш текущего
     * времени.
     *
     * @return
     * @throws NoSuchAlgorithmException
     */
    public String getSalts() throws NoSuchAlgorithmException {
        Date time = new Date();

        String s = Long.toString(time.getTime());
        MessageDigest m = MessageDigest.getInstance("MD5");
        m.update(s.getBytes(), 0, s.length());
        return new BigInteger(1, m.digest()).toString(16);
    }

}
