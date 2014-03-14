#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termio.h>
#include <signal.h>
#include <time.h>

/*    
 Write to Xillybus FIFO from file

@arg
  arg1 : Xillybus FIFO device file name: /dev/xillybus_write_8
  arg2 : File from which to read data to write to FIFO: input.txt

*/

void allwrite(int fd, unsigned char *buf, int len);

int main(int argc, char *argv[]) {

  int fd, fd1, rc, n=102400;//8383650;
//  double ttime;
  unsigned char buf[n];

  clock_t cstart, cend;

  if (argc!=3) {
    fprintf(stderr, "Usage: %s devfile\n", argv[0]);
    exit(1);
  }
  
  fd = open(argv[1], O_WRONLY);
  
  if (fd < 0) {
    if (errno == ENODEV)
      fprintf(stderr, "(Maybe %s a read-only file?)\n", argv[1]);

    perror("Failed to open devfile");
    exit(1);
  }

 fd1 = open(argv[2], O_RDONLY);
cstart = clock();
  while (1) {
    // Read from standard input = file descriptor 0
	
    rc = read(fd1, buf, sizeof(buf));
    printf("%d \n", rc);
    //if ((rc < 0) && (errno == EINTR))
      //continue;
    
    if (rc < 0) {
      perror("allread() failed to read");
      exit(1);
    }
    
    if (rc == 0) {
      fprintf(stderr, "Reached read EOF.\n");
	cend = clock();
    printf("Time taken = %.2f\n", 1.0*(cend - cstart));// / CLOCKS_PER_SEC);
      exit(0);
    }
    
    allwrite(fd, buf, rc);
    
    //ttime = (double)(cend - cstart);//CLOCKS_PER_SEC;    
  }
return(0);
}

/* 
   Plain write() may not write all bytes requested in the buffer, so
   allwrite() loops until all data was indeed written, or exits in
   case of failure, except for EINTR. The way the EINTR condition is
   handled is the standard way of making sure the process can be suspended
   with CTRL-Z and then continue running properly.

   The function has no return value, because it always succeeds (or exits
   instead of returning).

   The function doesn't expect to reach EOF either.
*/

void allwrite(int fd, unsigned char *buf, int len) {
  int sent = 0;
  int rc;

  while (sent < len) {
    rc = write(fd, buf + sent, len - sent);
	
    if ((rc < 0) && (errno == EINTR))
      continue;

    if (rc < 0) {
      perror("allwrite() failed to write");
      exit(1);
    }
	
    if (rc == 0) {
      fprintf(stderr, "Reached write EOF (?!)\n");
      exit(1);
    }
 
    sent += rc;
  }
} 
/*
config_console() does some good-old-UNIX vodoo standard input, so that
   read() won't wait for a carriage-return to get data. It also catches
   CTRL-C and other nasty stuff so it can return the terminal interface to 
   what is was before. In short, a lot of mumbo-jumbo, with nothing relevant 
   to Xillybus.
 

void config_console() {
  struct termio console_attributes;

  if (ioctl(0, TCGETA, &console_attributes) != -1) {
    // If we got here, we're reading from console

    console_attributes.c_lflag &= ~ICANON; // Turn off canonical mode
    console_attributes.c_cc[VMIN] = 1; // One character at least
    console_attributes.c_cc[VTIME] = 0; // No timeouts

    if (ioctl(0, TCSETAF, &console_attributes) == -1)
      fprintf(stderr, "Warning: Failed to set console to char-by-char\n");    
  }
}
*/
